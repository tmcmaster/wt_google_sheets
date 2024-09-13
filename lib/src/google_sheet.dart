import 'package:gsheets/gsheets.dart';

class GoogleSheet<T> {
  static const defaultWorksheetName = 'Sheet';
  final Spreadsheet spreadSheet;
  Worksheet worksheet;

  GoogleSheet._(this.spreadSheet, this.worksheet);

  static Future<GoogleSheet<T>> load<T>(
    String spreadsheetId,
    Map<String, String> serviceKey,
  ) async {
    final gsheets = GSheets(serviceKey);
    final spreadSheet = await gsheets.spreadsheet(spreadsheetId);
    final worksheet = spreadSheet.worksheetByIndex(0) ??
        spreadSheet.worksheetByTitle(defaultWorksheetName) ??
        await spreadSheet.addWorksheet(defaultWorksheetName);
    return GoogleSheet._(spreadSheet, worksheet);
  }

  Future<void> selectSheet(String sheetName) async {
    final worksheet =
        spreadSheet.worksheetByTitle(sheetName) ?? await spreadSheet.addWorksheet(sheetName);
    this.worksheet = worksheet;
  }

  Future<void> replaceSheet(List<List<dynamic>> rows) async {
    await this.worksheet.clear();
    await this.worksheet.values.appendRows(rows);
  }
}
