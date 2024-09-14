import 'dart:io';

import 'package:collection/collection.dart';
import 'package:wt_google_sheets/wt_google_sheets.dart';
import 'package:wt_google_sheets_examples/model/delivery.dart';
import 'package:wt_google_sheets_examples/model/driver.dart';
import 'package:wt_google_sheets_examples/model/route.dart';
import 'package:wt_google_sheets_examples/model/suburb.dart';

class DeliveryRouteBuilder {
  static const dataDir =
      '/Users/timmcmaster/Workspace/scm/flutter/libraries/wt_google_sheets/examples/data';
  static const ordersSheetName = 'Orders';
  static const suburbsSheetName = 'Suburbs';
  static const postcodesSheetName = 'Postcodes';
  static const driversSheetName = 'Drivers';
  static const routesSheetName = 'Routes';
  static const deliveriesSheetName = 'Deliveries';
  static const testingSheetName = 'Testing';

  final GoogleSheet _googleSheet;

  DeliveryRouteBuilder(
    String spreadsheetId,
    Map<String, String> serviceKey,
  ) : _googleSheet = GoogleSheet(
          spreadsheetId: spreadsheetId,
          serviceKey: serviceKey,
        );

  Future<List<Suburb>> getSuburbs({String? sheetName}) async {
    return _googleSheet.loadData(
      convert: Suburb.convert,
      sheet: sheetName ?? suburbsSheetName,
    );
  }

  Future<List<Driver>> getDrivers({String? sheetName}) async {
    return _googleSheet.loadData(
      convert: Driver.convert,
      sheet: sheetName ?? driversSheetName,
    );
  }

  Future<List<Route>> getRoutes({String? sheetName}) async {
    return _googleSheet.loadData(
      convert: Route.convert,
      sheet: sheetName ?? routesSheetName,
    );
  }

  Future<List<Delivery>> getDeliveries({String? sheetName}) async {
    return _googleSheet.loadData(
      convert: Delivery.convert,
      sheet: sheetName ?? deliveriesSheetName,
    );
  }

  Future<void> setDeliveries(List<Delivery> deliveries, {String? sheetName}) async {
    await _googleSheet.saveData(
      convert: Delivery.convert,
      sheet: sheetName ?? deliveriesSheetName,
      rows: deliveries,
    );
  }

  Future<Map<String, String>> getSuburbRouteMap() async {
    final suburbs = await getSuburbs();
    return {
      for (final suburb in suburbs) suburb.suburb.toLowerCase().trim(): suburb.route,
    };
  }

  Future<void> updateDeliveryRoutes() async {
    final ordersFile = File('$dataDir/example_orders.json');
    final suburbRouteMap = await getSuburbRouteMap();
    final orders = Delivery.convert.to.modelList.from.jsonMapListFile(ordersFile);
    final deliveries = orders
        .mapIndexed((index, order) => order.copyWith(
            route: suburbRouteMap[order.suburb.toLowerCase().trim()] ?? '',
            customerId: (30000 + index + 1).toString()))
        .toList();
    setDeliveries(deliveries, sheetName: '2024-09-16');
  }
}
