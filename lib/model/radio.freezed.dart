// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyRadio _$MyRadioFromJson(Map<String, dynamic> json) {
  return _MyRadio.fromJson(json);
}

/// @nodoc
mixin _$MyRadio {
  int? get id =>
      throw _privateConstructorUsedError; // required final int order,
  String? get name => throw _privateConstructorUsedError;
  String? get singer =>
      throw _privateConstructorUsedError; // required final String tageLine,
// required final String desc,
  String? get image => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get category =>
      throw _privateConstructorUsedError; // required final String icon,
// required final String lang,
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyRadioCopyWith<MyRadio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyRadioCopyWith<$Res> {
  factory $MyRadioCopyWith(MyRadio value, $Res Function(MyRadio) then) =
      _$MyRadioCopyWithImpl<$Res, MyRadio>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? singer,
      String? image,
      String? url,
      String? category,
      String color});
}

/// @nodoc
class _$MyRadioCopyWithImpl<$Res, $Val extends MyRadio>
    implements $MyRadioCopyWith<$Res> {
  _$MyRadioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? singer = freezed,
    Object? image = freezed,
    Object? url = freezed,
    Object? category = freezed,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      singer: freezed == singer
          ? _value.singer
          : singer // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyRadioCopyWith<$Res> implements $MyRadioCopyWith<$Res> {
  factory _$$_MyRadioCopyWith(
          _$_MyRadio value, $Res Function(_$_MyRadio) then) =
      __$$_MyRadioCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? singer,
      String? image,
      String? url,
      String? category,
      String color});
}

/// @nodoc
class __$$_MyRadioCopyWithImpl<$Res>
    extends _$MyRadioCopyWithImpl<$Res, _$_MyRadio>
    implements _$$_MyRadioCopyWith<$Res> {
  __$$_MyRadioCopyWithImpl(_$_MyRadio _value, $Res Function(_$_MyRadio) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? singer = freezed,
    Object? image = freezed,
    Object? url = freezed,
    Object? category = freezed,
    Object? color = null,
  }) {
    return _then(_$_MyRadio(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      singer: freezed == singer
          ? _value.singer
          : singer // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyRadio implements _MyRadio {
  const _$_MyRadio(
      {required this.id,
      required this.name,
      required this.singer,
      required this.image,
      required this.url,
      required this.category,
      required this.color});

  factory _$_MyRadio.fromJson(Map<String, dynamic> json) =>
      _$$_MyRadioFromJson(json);

  @override
  final int? id;
// required final int order,
  @override
  final String? name;
  @override
  final String? singer;
// required final String tageLine,
// required final String desc,
  @override
  final String? image;
  @override
  final String? url;
  @override
  final String? category;
// required final String icon,
// required final String lang,
  @override
  final String color;

  @override
  String toString() {
    return 'MyRadio(id: $id, name: $name, singer: $singer, image: $image, url: $url, category: $category, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyRadio &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.singer, singer) || other.singer == singer) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, singer, image, url, category, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyRadioCopyWith<_$_MyRadio> get copyWith =>
      __$$_MyRadioCopyWithImpl<_$_MyRadio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyRadioToJson(
      this,
    );
  }
}

abstract class _MyRadio implements MyRadio {
  const factory _MyRadio(
      {required final int? id,
      required final String? name,
      required final String? singer,
      required final String? image,
      required final String? url,
      required final String? category,
      required final String color}) = _$_MyRadio;

  factory _MyRadio.fromJson(Map<String, dynamic> json) = _$_MyRadio.fromJson;

  @override
  int? get id;
  @override // required final int order,
  String? get name;
  @override
  String? get singer;
  @override // required final String tageLine,
// required final String desc,
  String? get image;
  @override
  String? get url;
  @override
  String? get category;
  @override // required final String icon,
// required final String lang,
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$_MyRadioCopyWith<_$_MyRadio> get copyWith =>
      throw _privateConstructorUsedError;
}
