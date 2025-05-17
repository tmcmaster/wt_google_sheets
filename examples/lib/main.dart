import 'package:flutter/material.dart' hide Route;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_google_sheets/wt_google_sheets.dart';
import 'package:wt_google_sheets_examples/screen/google_sheets_screen.dart';
import 'package:wt_google_sheets_examples/secrets/flutter_sheets_secrets.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        GoogleSheetConfig.provider.overrideWith((ref) => GoogleSheetsSecrets.sheetConfig),
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
