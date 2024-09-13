import 'package:flutter/material.dart';
import 'package:wt_google_sheets/wt_google_sheets.dart';
import 'package:wt_google_sheets_examples/secrets/flutter-sheets-secrets.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TestGoogleSheets(),
    ),
  );
}

class TestGoogleSheets extends StatefulWidget {
  const TestGoogleSheets({super.key});

  @override
  State<TestGoogleSheets> createState() => _TestGoogleSheetsState();
}

class _TestGoogleSheetsState extends State<TestGoogleSheets> {
  GoogleSheet? googleSheet;

  @override
  void initState() {
    super.initState();
    GoogleSheet.load(
      GoogleSheetsSecrets.spreadsheetId,
      GoogleSheetsSecrets.serviceKey,
    ).then((googleSheet) {
      setState(() {
        this.googleSheet = googleSheet;
      });
    });
  }

  String value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Testing GoogleSheets'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Value: $value',
            ),
            if (googleSheet != null)
              OutlinedButton(
                onPressed: () async {
                  await googleSheet!.selectSheet('New Sheet');
                  await googleSheet!.replaceSheet([
                    ['AAA', 'bbb', '111'],
                    ['BBB', 'aaa', '222'],
                  ]);
                },
                child: const Text('Get Value'),
              ),
          ],
        ),
      ),
    );
  }
}
