import 'package:freezed_annotation/freezed_annotation.dart';

part 'radio.freezed.dart';
part 'radio.g.dart';

@freezed
class MyRadio with _$MyRadio {
  const factory MyRadio({
    required int? id,
    // required final int order,
    required String? name,
    required String? singer,
    // required final String tageLine,
    // required final String desc,
    required String? image,
    required String? url,
    required String? category,
    // required final String icon,
    // required final String lang,
    required final String color,
  }) = _MyRadio;

  factory MyRadio.fromJson(Map<String, Object?> json) =>
      _$MyRadioFromJson(json);
}
