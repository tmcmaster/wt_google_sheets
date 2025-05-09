import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_google_sheets_examples/store/examples_sheet_data_store.dart';
import 'package:wt_logging/wt_logging.dart';

class GoogleSheetsScreen extends ConsumerWidget {
  static final log = logger(GoogleSheetsScreen, level: Level.debug);

  const GoogleSheetsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suburbCount = ref.watch(ExamplesSheetDataStore.suburb).length;
    final driverCount = ref.watch(ExamplesSheetDataStore.driver).length;
    final routeCount = ref.watch(ExamplesSheetDataStore.route).length;
    final deliveryCount = ref.watch(ExamplesSheetDataStore.delivery).length;
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
