import 'dart:convert';
import 'package:ai_radio/model/radio.dart';
import 'package:ai_radio/model/radio_list.dart';
import 'package:ai_radio/utils/ai_util.dart';
import 'package:alan_voice/alan_voice.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MyRadio> radios = [];
  late MyRadio _selectedRadio;
  Color? _selectedColor;
  bool _isPlayed = false;

  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    setUpAlan();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      fetchRadio();
      setState(() {});
    });
    _audioPlayer.onPlayerStateChanged.listen((event) {
      if (event == PlayerState.playing) {
        _isPlayed = true;
      } else {
        _isPlayed = false;
      }
      setState(() {});
    });
  }

  void setUpAlan() {
    AlanVoice.addButton(
        "79760076f4493bbf7e00994708031ad12e956eca572e1d8b807a3e2338fdd0dc/stage",
        buttonAlign: AlanVoice.BUTTON_ALIGN_RIGHT);
    AlanVoice.callbacks.add((command) => _handleCommand(command.data));
  }

  void _handleCommand(Map<String, dynamic> response) {
    switch (response['command']) {
      case 'play':
        _playMusic(_selectedRadio.url);
        break;
      case 'stop':
        _audioPlayer.stop();
        break;
      case 'next':
        final int index = radios.indexOf(_selectedRadio);
        playNext();
        _playMusic(radios[index].url);
        setState(() {});
        break;
      case 'previous':
        final int index = _selectedRadio.id!;
        MyRadio newRadio;
        if (index - 1 <= 0) {
          newRadio = radios.firstWhere((element) => element.id == 1);
          radios.remove(newRadio);
          radios.insert(0, newRadio);
        } else {
          newRadio = radios.firstWhere((element) => element.id == index - 1);
          radios.remove(newRadio);
          radios.insert(0, newRadio);
        }
        _playMusic(newRadio.url);
        break;
      default:
        debugPrint("Command was ${response['command']}");
    }
  }

  void playNext() {
    MyRadio firstRadio = radios[0];
    for (int i = 0; i < radios.length - 2; i++) {
      radios[i] = radios[i + 1];
    }
    radios.last = firstRadio;
  }

  Future<void> fetchRadio() async {
    String radioJson = await rootBundle.loadString("assets/radio.json");
    Map<String, Object?> json = jsonDecode(radioJson);
    radios = MyRadioList.fromJson(json).radios.toList();
    debugPrint(radios.toString());
    _selectedRadio = radios[0];
    _selectedColor = Color(int.parse(_selectedRadio.color));
  }

  void _playMusic(String? url) {
    debugPrint(url);
    _audioPlayer.play(UrlSource(url!));
    _selectedRadio = radios.firstWhere((element) => element.url == url);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.antiAlias,
        children: [
          VxAnimatedBox()
              .size(context.screenWidth, context.screenHeight)
              .withGradient(LinearGradient(
                colors: [
                  AIColors.primaryColor2,
                  _selectedColor ?? AIColors.primaryColor1,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ))
              .make(),
          AppBar(
            title: "AI Radio".text.xl4.bold.white.make().shimmer(
                  primaryColor: Vx.purple300,
                  secondaryColor: Colors.white,
                ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
          ).h(80.0).p16(),
          radios.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : VxSwiper.builder(
                  itemCount: radios.length,
                  aspectRatio: 1.0,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    _selectedColor = Color(int.parse(radios[index].color));
                    _selectedRadio = radios[index];
                    if (_isPlayed) {
                      _playMusic(_selectedRadio.url);
                    }
                    setState(() {});
                  },
                  enlargeCenterPage: true,
                  itemBuilder: (context, int index) {
                    final MyRadio rad = radios[index];
                    return VxBox(
                      child: ZStack(clip: Clip.antiAlias, [
                        Positioned(
                          top: 0.0,
                          right: 0.0,
                          child: VxBox(
                            child: rad.category!.text.uppercase.white
                                .make()
                                .px16(),
                          )
                              .height(40)
                              .black
                              .alignCenter
                              .withRounded(value: 10.0)
                              .make(),
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: VStack(
                              crossAlignment: CrossAxisAlignment.center,
                              [
                                rad.name!.text.xl3.white.bold.make(),
                                5.heightBox,
                                rad.category!.text.sm.white.semiBold.make()
                              ],
                            )),
                        Align(
                          alignment: Alignment.center,
                          child: [
                            const Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                            ),
                            10.heightBox,
                            "Double tap to play".text.gray300.make(),
                          ].vStack(),
                        ),
                      ]),
                    )
                        .clip(Clip.antiAlias)
                        .bgImage(DecorationImage(
                          image: NetworkImage(rad.image.toString()),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.3), BlendMode.darken),
                        ))
                        .border(color: Colors.black, width: 5.0)
                        .withRounded(value: 60.0)
                        .make()
                        .onInkDoubleTap(() {
                      _playMusic(rad.url);
                      _selectedRadio = rad;
                    }).p16();
                  }).centered(),
          Align(
            alignment: Alignment.bottomCenter,
            child: [
              if (_isPlayed)
                "Playing Now - ${_selectedRadio.name.toString()}"
                    .text
                    .makeCentered(),
              Icon(
                _isPlayed ? Icons.stop_circle : Icons.play_circle,
                color: Colors.white,
                size: 50.0,
              ).onInkTap(() {
                if (_isPlayed) {
                  _audioPlayer.stop();
                } else {
                  _playMusic(_selectedRadio.url.toString());
                }
              })
            ].vStack(),
          ).pOnly(bottom: context.percentHeight * 12)
        ],
      ),
    );
  }
}
