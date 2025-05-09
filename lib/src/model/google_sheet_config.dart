import 'package:flutter_riverpod/flutter_riverpod.dart';

class GoogleSheetConfig {
  static final provider = Provider<GoogleSheetConfig>(
    name: 'Google Secrets',
    (ref) => throw Exception(
      'GoogleSheetsStore.secrets needs to be overridden with a Provider<GoogleSecrets?>',
    ),
  );

  final String configSheetId;
  final String dataSheetId;
  final Map<String, String> serviceKey;

  const GoogleSheetConfig({
    required this.configSheetId,
    required this.dataSheetId,
    required this.serviceKey,
  });
}
