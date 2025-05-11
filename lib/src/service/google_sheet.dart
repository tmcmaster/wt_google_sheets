import 'package:collection/collection.dart';
import 'package:gsheets/gsheets.dart';
import 'package:wt_logging/wt_logging.dart';
import 'package:wt_models/wt_models.dart';

class GoogleSheet {
  static final log = logger(GoogleSheet, level: Level.debug);

  static const listQuality = ListEquality();
  final String sheetId;
  late final Future<Spreadsheet> _spreadSheet;

  GoogleSheet({
    required this.sheetId,
    required Map<String, String> serviceKey,
  }) {
    log.d('Creating: $sheetId');

    _spreadSheet = GSheets(serviceKey).spreadsheet(sheetId);
  }

  Future<List<T>> loadData<T extends BaseModel<T>>({
    required DslConvert<T> convert,
    required String sheet,
  }) async {
    final worksheet = await _selectWorksheet(sheet);
    final jsonMapList = await worksheet.values.map.allRows(fromRow: 1) ?? [];
    return convert.from.jsonMapList.to.modelList(jsonMapList);
  }

  Future<void> saveData<T extends BaseModel<T>>({
    required DslConvert<T> convert,
    required String sheet,
    required List<T> rows,
  }) async {
    final worksheet = await _selectWorksheet(sheet);
    await worksheet.clear();
    await worksheet.values.insertRows(1, [convert.titles()]);
    if (rows.isNotEmpty) {
      final data = convert.from.modelList.to.jsonMapList(rows);
      await worksheet.values.map.insertRows(2, data, mapTo: 1);
    }
  }

  Future<Worksheet> _selectWorksheet(String sheet) async {
    return (await _spreadSheet).worksheetByTitle(sheet) ?? await (await _spreadSheet).addWorksheet(sheet);
  }

  @override
  String toString() => 'GoogleSheet($sheetId)';
}
