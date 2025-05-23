import 'package:flutter/material.dart' hide Route;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_google_sheets/wt_google_sheets.dart';
import 'package:wt_google_sheets_examples/screen/google_sheets_screen.dart';
import 'package:wt_google_sheets_examples/secrets/flutter_sheets_secrets.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        GoogleSheetsStore.secrets.overrideWith(
          (ref) => GoogleSheetSecrets(
            sheetId: GoogleSheetsSecrets.spreadsheetId,
            serviceKey: GoogleSheetsSecrets.serviceKey,
          ),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: GoogleSheetsScreen(),
      ),
    ),
  );
}
