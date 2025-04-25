// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wt_models/wt_models.dart';

part 'route.freezed.dart';
part 'route.g.dart';

@freezed
class Route extends BaseModel<Route> with _$Route {
  static final convert = DslConvert<Route>(
    titles: ['Route', 'Delivery Day', 'Driver', 'Vehicle' 'Packing Day'],
    jsonToModel: Route.fromJson,
    none: Route.empty(),
  );

  const factory Route({
    @JsonKey(name: 'Route') @Default('') String route,
    @JsonKey(name: 'Delivery Day') @Default('') String deliveryDay,
    @JsonKey(name: 'Driver') @Default('') String driver,
    @JsonKey(name: 'Vehicle') @Default('') String vehicle,
    @JsonKey(name: 'Packing Day') @Default('') String packingDay,
  }) = _Route;

  const Route._();

  factory Route.empty() => const Route();

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

  @override
  String getId() => route;

  @override
  String getTitle() => route;

  @override
  List<String> getTitles() => convert.titles();
}
