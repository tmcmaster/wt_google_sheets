// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_sheet_secrets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoogleSheetSecrets _$GoogleSheetSecretsFromJson(Map<String, dynamic> json) {
  return _GoogleSheetSecrets.fromJson(json);
}

/// @nodoc
mixin _$GoogleSheetSecrets {
  String get sheetId => throw _privateConstructorUsedError;
  Map<String, String> get serviceKey => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this GoogleSheetSecrets to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoogleSheetSecrets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoogleSheetSecretsCopyWith<GoogleSheetSecrets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleSheetSecretsCopyWith<$Res> {
  factory $GoogleSheetSecretsCopyWith(
          GoogleSheetSecrets value, $Res Function(GoogleSheetSecrets) then) =
      _$GoogleSheetSecretsCopyWithImpl<$Res, GoogleSheetSecrets>;
  @useResult
  $Res call({String sheetId, Map<String, String> serviceKey, bool isActive});
}

/// @nodoc
class _$GoogleSheetSecretsCopyWithImpl<$Res, $Val extends GoogleSheetSecrets>
    implements $GoogleSheetSecretsCopyWith<$Res> {
  _$GoogleSheetSecretsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoogleSheetSecrets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sheetId = null,
    Object? serviceKey = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      sheetId: null == sheetId
          ? _value.sheetId
          : sheetId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceKey: null == serviceKey
          ? _value.serviceKey
          : serviceKey // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleSheetSecretsImplCopyWith<$Res>
    implements $GoogleSheetSecretsCopyWith<$Res> {
  factory _$$GoogleSheetSecretsImplCopyWith(_$GoogleSheetSecretsImpl value,
          $Res Function(_$GoogleSheetSecretsImpl) then) =
      __$$GoogleSheetSecretsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sheetId, Map<String, String> serviceKey, bool isActive});
}

/// @nodoc
class __$$GoogleSheetSecretsImplCopyWithImpl<$Res>
    extends _$GoogleSheetSecretsCopyWithImpl<$Res, _$GoogleSheetSecretsImpl>
    implements _$$GoogleSheetSecretsImplCopyWith<$Res> {
  __$$GoogleSheetSecretsImplCopyWithImpl(_$GoogleSheetSecretsImpl _value,
      $Res Function(_$GoogleSheetSecretsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleSheetSecrets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sheetId = null,
    Object? serviceKey = null,
    Object? isActive = null,
  }) {
    return _then(_$GoogleSheetSecretsImpl(
      sheetId: null == sheetId
          ? _value.sheetId
          : sheetId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceKey: null == serviceKey
          ? _value._serviceKey
          : serviceKey // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleSheetSecretsImpl implements _GoogleSheetSecrets {
  const _$GoogleSheetSecretsImpl(
      {required this.sheetId,
      required final Map<String, String> serviceKey,
      this.isActive = false})
      : _serviceKey = serviceKey;

  factory _$GoogleSheetSecretsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleSheetSecretsImplFromJson(json);

  @override
  final String sheetId;
  final Map<String, String> _serviceKey;
  @override
  Map<String, String> get serviceKey {
    if (_serviceKey is EqualUnmodifiableMapView) return _serviceKey;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_serviceKey);
  }

  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'GoogleSheetSecrets(sheetId: $sheetId, serviceKey: $serviceKey, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSheetSecretsImpl &&
            (identical(other.sheetId, sheetId) || other.sheetId == sheetId) &&
            const DeepCollectionEquality()
                .equals(other._serviceKey, _serviceKey) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sheetId,
      const DeepCollectionEquality().hash(_serviceKey), isActive);

  /// Create a copy of GoogleSheetSecrets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleSheetSecretsImplCopyWith<_$GoogleSheetSecretsImpl> get copyWith =>
      __$$GoogleSheetSecretsImplCopyWithImpl<_$GoogleSheetSecretsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleSheetSecretsImplToJson(
      this,
    );
  }
}

abstract class _GoogleSheetSecrets implements GoogleSheetSecrets {
  const factory _GoogleSheetSecrets(
      {required final String sheetId,
      required final Map<String, String> serviceKey,
      final bool isActive}) = _$GoogleSheetSecretsImpl;

  factory _GoogleSheetSecrets.fromJson(Map<String, dynamic> json) =
      _$GoogleSheetSecretsImpl.fromJson;

  @override
  String get sheetId;
  @override
  Map<String, String> get serviceKey;
  @override
  bool get isActive;

  /// Create a copy of GoogleSheetSecrets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleSheetSecretsImplCopyWith<_$GoogleSheetSecretsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
