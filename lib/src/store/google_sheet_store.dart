import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_google_sheets/wt_google_sheets.dart';
import 'package:wt_logging/wt_logging.dart';

mixin GoogleSheetsStore {
  static final log = logger(GoogleSheetsStore, level: Level.debug);

  static final configSheet = Provider(
    name: 'GoogleSheetsStore.configSheet',
    (ref) {
      final sheetConfig = ref.read(GoogleSheetConfig.provider);
      return GoogleSheet(
        sheetId: sheetConfig.configSheetId,
        serviceKey: sheetConfig.serviceKey,
      );
    },
  );

  static final dataSheet = Provider(
    name: 'GoogleSheetsStore.dataSheet',
    (ref) {
      final sheetConfig = ref.read(GoogleSheetConfig.provider);
      if (sheetConfig.dataSheetId == sheetConfig.configSheetId) {
        return ref.read(configSheet);
      } else {
        return GoogleSheet(
          sheetId: sheetConfig.dataSheetId,
          serviceKey: sheetConfig.serviceKey,
        );
      }
    },
  );
}
