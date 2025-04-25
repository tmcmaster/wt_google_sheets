// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteImpl _$$RouteImplFromJson(Map<String, dynamic> json) => _$RouteImpl(
      route: json['Route'] as String? ?? '',
      deliveryDay: json['Delivery Day'] as String? ?? '',
      driver: json['Driver'] as String? ?? '',
      vehicle: json['Vehicle'] as String? ?? '',
      packingDay: json['Packing Day'] as String? ?? '',
    );

Map<String, dynamic> _$$RouteImplToJson(_$RouteImpl instance) =>
    <String, dynamic>{
      'Route': instance.route,
      'Delivery Day': instance.deliveryDay,
      'Driver': instance.driver,
      'Vehicle': instance.vehicle,
      'Packing Day': instance.packingDay,
    };
