import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_sheet_secrets.freezed.dart';
part 'google_sheet_secrets.g.dart';

@freezed
class GoogleSheetSecrets with _$GoogleSheetSecrets {
  const factory GoogleSheetSecrets({
    required String sheetId,
    required Map<String, String> serviceKey,
    @Default(false) bool isActive,
  }) = _GoogleSheetSecrets;

  factory GoogleSheetSecrets.fromJson(Map<String, dynamic> json) => _$GoogleSheetSecretsFromJson(json);
}
