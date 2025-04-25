import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_google_sheets/wt_google_sheets.dart';
import 'package:wt_logging/wt_logging.dart';

mixin GoogleSheetsStore {
  static final log = logger(GoogleSheetsStore, level: Level.debug);

  static final secrets = Provider<GoogleSheetSecrets>(
    name: 'Google Secrets',
    (ref) => throw Exception(
      'GoogleSheetsStore.secrets needs to be overridden with a Provider<GoogleSecrets?>',
    ),
  );

  static final sheet = Provider(
    name: 'GoogleSheetsStore',
    (ref) {
      final sheetSecrets = ref.watch(secrets);
      return GoogleSheet(
        sheetId: sheetSecrets.sheetId,
        serviceKey: sheetSecrets.serviceKey,
      );
    },
  );
}
