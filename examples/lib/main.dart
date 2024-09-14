import 'package:flutter/material.dart' hide Route;
import 'package:wt_google_sheets_examples/builder/delivery_route_builder.dart';
import 'package:wt_google_sheets_examples/secrets/flutter-sheets-secrets.dart';
import 'package:wt_logging/wt_logging.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TestGoogleSheets(),
    ),
  );
}

class TestGoogleSheets extends StatelessWidget {
  static final log = logger(TestGoogleSheets, level: Level.debug);

  TestGoogleSheets({super.key});

  final deliveryRouteBuilder = DeliveryRouteBuilder(
    GoogleSheetsSecrets.spreadsheetId,
    GoogleSheetsSecrets.serviceKey,
  );

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
          children: [
            OutlinedButton(
              onPressed: _readSuburbs,
              child: const Text('Read Suburbs'),
            ),
            OutlinedButton(
              onPressed: _readDrivers,
              child: const Text('Read Drivers'),
            ),
            OutlinedButton(
              onPressed: _readRoutes,
              child: const Text('Read Routes'),
            ),
            OutlinedButton(
              onPressed: _readDeliveries,
              child: const Text('Read Deliveries'),
            ),
            OutlinedButton(
              onPressed: _updateDeliveryRoutes,
              child: const Text('Update Routes'),
            ),
          ]
              .map((c) => Padding(
                    padding: const EdgeInsets.all(8),
                    child: c,
                  ))
              .toList(),
        ),
      ),
    );
  }

  void _readSuburbs() async {
    log.d('Suburbs: ${deliveryRouteBuilder.getSuburbs()}');
  }

  void _readDrivers() async {
    log.d('Drivers: ${deliveryRouteBuilder.getDrivers()}');
  }

  void _readRoutes() async {
    log.d('Routes: ${deliveryRouteBuilder.getRoutes()}');
  }

  void _readDeliveries() async {
    log.d('Deliveries: ${deliveryRouteBuilder.getDeliveries()}');
  }

  void _updateDeliveryRoutes() async {
    deliveryRouteBuilder.updateDeliveryRoutes();
  }
}
