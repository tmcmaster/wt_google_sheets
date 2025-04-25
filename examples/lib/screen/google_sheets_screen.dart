import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_google_sheets_examples/store/sheet_data_store.dart';
import 'package:wt_logging/wt_logging.dart';

class GoogleSheetsScreen extends ConsumerWidget {
  static final log = logger(GoogleSheetsScreen, level: Level.debug);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suburbCount = ref.watch(SheetDataStore.suburb).length;
    final driverCount = ref.watch(SheetDataStore.driver).length;
    final routeCount = ref.watch(SheetDataStore.route).length;
    final deliveryCount = ref.watch(SheetDataStore.delivery).length;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Testing GoogleSheets'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Suburb: $suburbCount'),
            Text('Driver: $driverCount'),
            Text('Route: $routeCount'),
            Text('Delivery: $deliveryCount'),
          ],
        ),
      ),
    );
  }
}
