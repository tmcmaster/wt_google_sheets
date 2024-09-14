// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postcode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Postcode _$PostcodeFromJson(Map<String, dynamic> json) {
  return _Postcode.fromJson(json);
}

/// @nodoc
mixin _$Postcode {
  String get suburb => throw _privateConstructorUsedError;
  String get postcode => throw _privateConstructorUsedError;

  /// Serializes this Postcode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Postcode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostcodeCopyWith<Postcode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostcodeCopyWith<$Res> {
  factory $PostcodeCopyWith(Postcode value, $Res Function(Postcode) then) =
      _$PostcodeCopyWithImpl<$Res, Postcode>;
  @useResult
  $Res call({String suburb, String postcode});
}

/// @nodoc
class _$PostcodeCopyWithImpl<$Res, $Val extends Postcode>
    implements $PostcodeCopyWith<$Res> {
  _$PostcodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Postcode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suburb = null,
    Object? postcode = null,
  }) {
    return _then(_value.copyWith(
      suburb: null == suburb
          ? _value.suburb
          : suburb // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostcodeImplCopyWith<$Res>
    implements $PostcodeCopyWith<$Res> {
  factory _$$PostcodeImplCopyWith(
          _$PostcodeImpl value, $Res Function(_$PostcodeImpl) then) =
      __$$PostcodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String suburb, String postcode});
}

/// @nodoc
class __$$PostcodeImplCopyWithImpl<$Res>
    extends _$PostcodeCopyWithImpl<$Res, _$PostcodeImpl>
    implements _$$PostcodeImplCopyWith<$Res> {
  __$$PostcodeImplCopyWithImpl(
      _$PostcodeImpl _value, $Res Function(_$PostcodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Postcode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suburb = null,
    Object? postcode = null,
  }) {
    return _then(_$PostcodeImpl(
      suburb: null == suburb
          ? _value.suburb
          : suburb // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostcodeImpl extends _Postcode {
  const _$PostcodeImpl({required this.suburb, required this.postcode})
      : super._();

  factory _$PostcodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostcodeImplFromJson(json);

  @override
  final String suburb;
  @override
  final String postcode;

  @override
  String toString() {
    return 'Postcode(suburb: $suburb, postcode: $postcode)';
  }

  /// Create a copy of Postcode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostcodeImplCopyWith<_$PostcodeImpl> get copyWith =>
      __$$PostcodeImplCopyWithImpl<_$PostcodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostcodeImplToJson(
      this,
    );
  }
}

abstract class _Postcode extends Postcode {
  const factory _Postcode(
      {required final String suburb,
      required final String postcode}) = _$PostcodeImpl;
  const _Postcode._() : super._();

  factory _Postcode.fromJson(Map<String, dynamic> json) =
      _$PostcodeImpl.fromJson;

  @override
  String get suburb;
  @override
  String get postcode;

  /// Create a copy of Postcode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostcodeImplCopyWith<_$PostcodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
