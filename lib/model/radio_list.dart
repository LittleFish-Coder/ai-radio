import 'package:ai_radio/model/radio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'radio_list.freezed.dart';
part 'radio_list.g.dart';

@freezed
class MyRadioList with _$MyRadioList {
  const factory MyRadioList({
    required final List<MyRadio> radios,
  }) = _MyRadioList;

  factory MyRadioList.fromJson(Map<String, Object?> json) =>
      _$MyRadioListFromJson(json);
}
