import 'package:collection/collection.dart';
import 'package:gsheets/gsheets.dart';
import 'package:wt_models/wt_models.dart';

class GoogleSheet {
  static const listQuality = ListEquality();
  final Future<Spreadsheet> _spreadSheet;

  GoogleSheet({
    required String spreadsheetId,
    required Map<String, String> serviceKey,
  }) : _spreadSheet = GSheets(serviceKey).spreadsheet(spreadsheetId);

  Future<List<T>> loadData<T extends BaseModel<T>>({
    required DslConvert<T> convert,
    required String sheet,
  }) async {
    final worksheet = (await _spreadSheet).worksheetByTitle(sheet);
    if (worksheet != null) {
      final jsonMapList = await worksheet.values.map.allRows(fromRow: 1) ?? [];
      print(jsonMapList);
      return convert.from.jsonMapList.to.modelList(jsonMapList);
    }
    throw Exception('There was no worksheet called: $sheet');
  }

  Future<void> saveData<T extends BaseModel<T>>({
    required DslConvert<T> convert,
    required String sheet,
    required List<T> rows,
  }) async {
    Worksheet? worksheet = (await _spreadSheet).worksheetByTitle(sheet);
    worksheet ??= await (await _spreadSheet).addWorksheet(sheet);
    final headers = await worksheet.values.row(1);
    final titles = convert.titles();
    if (!listQuality.equals(titles, headers)) {
      await worksheet.values.insertRows(1, [convert.titles()]);
    }
    final data = convert.from.modelList.to.jsonMapList(rows);
    await worksheet.values.map.insertRows(2, data, mapTo: 1);
  }
}
