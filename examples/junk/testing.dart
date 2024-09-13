import 'package:wt_google_sheets/wt_google_sheets.dart';
import 'package:wt_google_sheets_examples/secrets/flutter-sheets-secrets.dart';

void main() async {
  final googleSheet = await GoogleSheet.load<List<String>>(
      GoogleSheetsSecrets.spreadsheetId, GoogleSheetsSecrets.serviceKey);
  await googleSheet.selectSheet('example2');
  await googleSheet.replaceSheet([
    ['a', 'b', '11'],
    ['b', 'a', '22'],
  ]);
}
