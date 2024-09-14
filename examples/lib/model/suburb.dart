import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wt_models/wt_models.dart';

part 'suburb.freezed.dart';
part 'suburb.g.dart';

@freezed
class Suburb extends BaseModel<Suburb> with _$Suburb {
  static final convert = DslConvert<Suburb>(
    titles: ['suburb', 'route'],
    jsonToModel: Suburb.fromJson,
    none: Suburb.empty(),
  );

  const factory Suburb({
    required String suburb,
    required String route,
  }) = _Suburb;

  const Suburb._();

  factory Suburb.empty() => const Suburb(
        suburb: '',
        route: '',
      );

  factory Suburb.fromJson(Map<String, dynamic> json) => _$SuburbFromJson(json);

  @override
  String getId() => suburb;

  @override
  String getTitle() => suburb;

  @override
  List<String> getTitles() => convert.titles();
}
