import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wt_models/wt_models.dart';

part 'driver.freezed.dart';
part 'driver.g.dart';

@freezed
class Driver extends BaseModel<Driver> with _$Driver {
  static final convert = DslConvert<Driver>(
    titles: ['name'],
    jsonToModel: Driver.fromJson,
    none: Driver.empty(),
  );

  const factory Driver({
    required String name,
  }) = _Driver;

  const Driver._();

  factory Driver.empty() => const Driver(
        name: '',
      );

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

  @override
  String getId() => name;

  @override
  String getTitle() => name;

  @override
  List<String> getTitles() => convert.titles();
}
