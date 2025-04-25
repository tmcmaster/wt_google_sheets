// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
mixin _$Route {
  @JsonKey(name: 'Route')
  String get route => throw _privateConstructorUsedError;
  @JsonKey(name: 'Delivery Day')
  String get deliveryDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'Driver')
  String get driver => throw _privateConstructorUsedError;
  @JsonKey(name: 'Vehicle')
  String get vehicle => throw _privateConstructorUsedError;
  @JsonKey(name: 'Packing Day')
  String get packingDay => throw _privateConstructorUsedError;

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res, Route>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Route') String route,
      @JsonKey(name: 'Delivery Day') String deliveryDay,
      @JsonKey(name: 'Driver') String driver,
      @JsonKey(name: 'Vehicle') String vehicle,
      @JsonKey(name: 'Packing Day') String packingDay});
}

/// @nodoc
class _$RouteCopyWithImpl<$Res, $Val extends Route>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? deliveryDay = null,
    Object? driver = null,
    Object? vehicle = null,
    Object? packingDay = null,
  }) {
    return _then(_value.copyWith(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDay: null == deliveryDay
          ? _value.deliveryDay
          : deliveryDay // ignore: cast_nullable_to_non_nullable
              as String,
      driver: null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as String,
      packingDay: null == packingDay
          ? _value.packingDay
          : packingDay // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RouteImplCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$$RouteImplCopyWith(
          _$RouteImpl value, $Res Function(_$RouteImpl) then) =
      __$$RouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Route') String route,
      @JsonKey(name: 'Delivery Day') String deliveryDay,
      @JsonKey(name: 'Driver') String driver,
      @JsonKey(name: 'Vehicle') String vehicle,
      @JsonKey(name: 'Packing Day') String packingDay});
}

/// @nodoc
class __$$RouteImplCopyWithImpl<$Res>
    extends _$RouteCopyWithImpl<$Res, _$RouteImpl>
    implements _$$RouteImplCopyWith<$Res> {
  __$$RouteImplCopyWithImpl(
      _$RouteImpl _value, $Res Function(_$RouteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? deliveryDay = null,
    Object? driver = null,
    Object? vehicle = null,
    Object? packingDay = null,
  }) {
    return _then(_$RouteImpl(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDay: null == deliveryDay
          ? _value.deliveryDay
          : deliveryDay // ignore: cast_nullable_to_non_nullable
              as String,
      driver: null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as String,
      packingDay: null == packingDay
          ? _value.packingDay
          : packingDay // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteImpl extends _Route {
  const _$RouteImpl(
      {@JsonKey(name: 'Route') this.route = '',
      @JsonKey(name: 'Delivery Day') this.deliveryDay = '',
      @JsonKey(name: 'Driver') this.driver = '',
      @JsonKey(name: 'Vehicle') this.vehicle = '',
      @JsonKey(name: 'Packing Day') this.packingDay = ''})
      : super._();

  factory _$RouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteImplFromJson(json);

  @override
  @JsonKey(name: 'Route')
  final String route;
  @override
  @JsonKey(name: 'Delivery Day')
  final String deliveryDay;
  @override
  @JsonKey(name: 'Driver')
  final String driver;
  @override
  @JsonKey(name: 'Vehicle')
  final String vehicle;
  @override
  @JsonKey(name: 'Packing Day')
  final String packingDay;

  @override
  String toString() {
    return 'Route(route: $route, deliveryDay: $deliveryDay, driver: $driver, vehicle: $vehicle, packingDay: $packingDay)';
  }

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      __$$RouteImplCopyWithImpl<_$RouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteImplToJson(
      this,
    );
  }
}

abstract class _Route extends Route {
  const factory _Route(
      {@JsonKey(name: 'Route') final String route,
      @JsonKey(name: 'Delivery Day') final String deliveryDay,
      @JsonKey(name: 'Driver') final String driver,
      @JsonKey(name: 'Vehicle') final String vehicle,
      @JsonKey(name: 'Packing Day') final String packingDay}) = _$RouteImpl;
  const _Route._() : super._();

  factory _Route.fromJson(Map<String, dynamic> json) = _$RouteImpl.fromJson;

  @override
  @JsonKey(name: 'Route')
  String get route;
  @override
  @JsonKey(name: 'Delivery Day')
  String get deliveryDay;
  @override
  @JsonKey(name: 'Driver')
  String get driver;
  @override
  @JsonKey(name: 'Vehicle')
  String get vehicle;
  @override
  @JsonKey(name: 'Packing Day')
  String get packingDay;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
