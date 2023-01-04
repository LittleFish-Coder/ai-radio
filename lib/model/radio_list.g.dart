// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radio_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyRadioList _$$_MyRadioListFromJson(Map<String, dynamic> json) =>
    _$_MyRadioList(
      radios: (json['radios'] as List<dynamic>)
          .map((e) => MyRadio.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MyRadioListToJson(_$_MyRadioList instance) =>
    <String, dynamic>{
      'radios': instance.radios,
    };
