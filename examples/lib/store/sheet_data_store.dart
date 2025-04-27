import 'package:wt_google_sheets/wt_google_sheets.dart';
import 'package:wt_google_sheets_examples/model/delivery.dart';
import 'package:wt_google_sheets_examples/model/driver.dart';
import 'package:wt_google_sheets_examples/model/route.dart';
import 'package:wt_google_sheets_examples/model/suburb.dart';

mixin SheetDataStore {
  static final suburb = GoogleSheetTabNotifier.create(
    name: 'suburb-sheet',
    sheetName: 'Suburbs',
    convert: Suburb.convert,
    initLoad: true,
  );
  static final driver = GoogleSheetTabNotifier.create(
    name: 'driver-sheet',
    sheetName: 'Drivers',
    convert: Driver.convert,
    initLoad: true,
  );
  static final route = GoogleSheetTabNotifier.create(
    name: 'route-sheet',
    sheetName: 'Routes',
    convert: Route.convert,
    initLoad: true,
  );
  static final delivery = GoogleSheetTabNotifier.create(
    name: 'delivery-sheet',
    sheetName: 'Deliveries',
    convert: Delivery.convert,
    initLoad: true,
  );
}
