// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suburb.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Suburb _$SuburbFromJson(Map<String, dynamic> json) {
  return _Suburb.fromJson(json);
}

/// @nodoc
mixin _$Suburb {
  String get suburb => throw _privateConstructorUsedError;
  String get route => throw _privateConstructorUsedError;

  /// Serializes this Suburb to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Suburb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuburbCopyWith<Suburb> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuburbCopyWith<$Res> {
  factory $SuburbCopyWith(Suburb value, $Res Function(Suburb) then) =
      _$SuburbCopyWithImpl<$Res, Suburb>;
  @useResult
  $Res call({String suburb, String route});
}

/// @nodoc
class _$SuburbCopyWithImpl<$Res, $Val extends Suburb>
    implements $SuburbCopyWith<$Res> {
  _$SuburbCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Suburb
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suburb = null,
    Object? route = null,
  }) {
    return _then(_value.copyWith(
      suburb: null == suburb
          ? _value.suburb
          : suburb // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuburbImplCopyWith<$Res> implements $SuburbCopyWith<$Res> {
  factory _$$SuburbImplCopyWith(
          _$SuburbImpl value, $Res Function(_$SuburbImpl) then) =
      __$$SuburbImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String suburb, String route});
}

/// @nodoc
class __$$SuburbImplCopyWithImpl<$Res>
    extends _$SuburbCopyWithImpl<$Res, _$SuburbImpl>
    implements _$$SuburbImplCopyWith<$Res> {
  __$$SuburbImplCopyWithImpl(
      _$SuburbImpl _value, $Res Function(_$SuburbImpl) _then)
      : super(_value, _then);

  /// Create a copy of Suburb
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suburb = null,
    Object? route = null,
  }) {
    return _then(_$SuburbImpl(
      suburb: null == suburb
          ? _value.suburb
          : suburb // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuburbImpl extends _Suburb {
  const _$SuburbImpl({required this.suburb, required this.route}) : super._();

  factory _$SuburbImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuburbImplFromJson(json);

  @override
  final String suburb;
  @override
  final String route;

  @override
  String toString() {
    return 'Suburb(suburb: $suburb, route: $route)';
  }

  /// Create a copy of Suburb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuburbImplCopyWith<_$SuburbImpl> get copyWith =>
      __$$SuburbImplCopyWithImpl<_$SuburbImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuburbImplToJson(
      this,
    );
  }
}

abstract class _Suburb extends Suburb {
  const factory _Suburb(
      {required final String suburb,
      required final String route}) = _$SuburbImpl;
  const _Suburb._() : super._();

  factory _Suburb.fromJson(Map<String, dynamic> json) = _$SuburbImpl.fromJson;

  @override
  String get suburb;
  @override
  String get route;

  /// Create a copy of Suburb
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuburbImplCopyWith<_$SuburbImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
