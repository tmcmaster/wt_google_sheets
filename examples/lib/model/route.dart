import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wt_models/wt_models.dart';

part 'route.freezed.dart';
part 'route.g.dart';

@freezed
class Route extends BaseModel<Route> with _$Route {
  static final convert = DslConvert<Route>(
    titles: ['driver', 'day', 'route'],
    jsonToModel: Route.fromJson,
    none: Route.empty(),
  );

  const factory Route({
    required String driver,
    required String day,
    required String route,
  }) = _Route;

  const Route._();

  factory Route.empty() => const Route(
        driver: '',
        day: '',
        route: '',
      );

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

  @override
  String getId() => route;

  @override
  String getTitle() => route;

  @override
  List<String> getTitles() => convert.titles();
}
