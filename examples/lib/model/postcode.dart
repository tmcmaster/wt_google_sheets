import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wt_models/wt_models.dart';

part 'postcode.freezed.dart';
part 'postcode.g.dart';

@freezed
class Postcode extends BaseModel<Postcode> with _$Postcode {
  static final convert = DslConvert<Postcode>(
    titles: ['suburb', 'postcode'],
    jsonToModel: Postcode.fromJson,
    none: Postcode.empty(),
  );

  const factory Postcode({
    required String suburb,
    required String postcode,
  }) = _Postcode;

  const Postcode._();

  factory Postcode.empty() => const Postcode(
        suburb: '',
        postcode: '',
      );

  factory Postcode.fromJson(Map<String, dynamic> json) => _$PostcodeFromJson(json);

  @override
  String getId() => suburb;

  @override
  String getTitle() => suburb;

  @override
  List<String> getTitles() => convert.titles();
}
