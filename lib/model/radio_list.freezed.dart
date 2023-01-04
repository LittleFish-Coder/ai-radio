// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyRadioList _$MyRadioListFromJson(Map<String, dynamic> json) {
  return _MyRadioList.fromJson(json);
}

/// @nodoc
mixin _$MyRadioList {
  List<MyRadio> get radios => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyRadioListCopyWith<MyRadioList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyRadioListCopyWith<$Res> {
  factory $MyRadioListCopyWith(
          MyRadioList value, $Res Function(MyRadioList) then) =
      _$MyRadioListCopyWithImpl<$Res, MyRadioList>;
  @useResult
  $Res call({List<MyRadio> radios});
}

/// @nodoc
class _$MyRadioListCopyWithImpl<$Res, $Val extends MyRadioList>
    implements $MyRadioListCopyWith<$Res> {
  _$MyRadioListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radios = null,
  }) {
    return _then(_value.copyWith(
      radios: null == radios
          ? _value.radios
          : radios // ignore: cast_nullable_to_non_nullable
              as List<MyRadio>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyRadioListCopyWith<$Res>
    implements $MyRadioListCopyWith<$Res> {
  factory _$$_MyRadioListCopyWith(
          _$_MyRadioList value, $Res Function(_$_MyRadioList) then) =
      __$$_MyRadioListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MyRadio> radios});
}

/// @nodoc
class __$$_MyRadioListCopyWithImpl<$Res>
    extends _$MyRadioListCopyWithImpl<$Res, _$_MyRadioList>
    implements _$$_MyRadioListCopyWith<$Res> {
  __$$_MyRadioListCopyWithImpl(
      _$_MyRadioList _value, $Res Function(_$_MyRadioList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radios = null,
  }) {
    return _then(_$_MyRadioList(
      radios: null == radios
          ? _value._radios
          : radios // ignore: cast_nullable_to_non_nullable
              as List<MyRadio>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyRadioList implements _MyRadioList {
  const _$_MyRadioList({required final List<MyRadio> radios})
      : _radios = radios;

  factory _$_MyRadioList.fromJson(Map<String, dynamic> json) =>
      _$$_MyRadioListFromJson(json);

  final List<MyRadio> _radios;
  @override
  List<MyRadio> get radios {
    if (_radios is EqualUnmodifiableListView) return _radios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_radios);
  }

  @override
  String toString() {
    return 'MyRadioList(radios: $radios)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyRadioList &&
            const DeepCollectionEquality().equals(other._radios, _radios));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_radios));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyRadioListCopyWith<_$_MyRadioList> get copyWith =>
      __$$_MyRadioListCopyWithImpl<_$_MyRadioList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyRadioListToJson(
      this,
    );
  }
}

abstract class _MyRadioList implements MyRadioList {
  const factory _MyRadioList({required final List<MyRadio> radios}) =
      _$_MyRadioList;

  factory _MyRadioList.fromJson(Map<String, dynamic> json) =
      _$_MyRadioList.fromJson;

  @override
  List<MyRadio> get radios;
  @override
  @JsonKey(ignore: true)
  _$$_MyRadioListCopyWith<_$_MyRadioList> get copyWith =>
      throw _privateConstructorUsedError;
}
