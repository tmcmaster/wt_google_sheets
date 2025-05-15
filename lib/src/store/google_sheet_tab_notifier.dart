import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_google_sheets/wt_google_sheets.dart';
import 'package:wt_logging/wt_logging.dart';
import 'package:wt_models/wt_models.dart';
import 'package:wt_state/wt_state.dart';

class GoogleSheetTabNotifier<T extends BaseModel<T>> extends ListStateNotifier<T> {
  static final log = logger(GoogleSheetTabNotifier, level: Level.debug);

  final GoogleSheet _googleSheet;
  final String _sheetName;
  final DslConvert<T> _convert;
  Ref ref;

  GoogleSheetTabNotifier._(
    this.ref, {
    required String sheetName,
    required DslConvert<T> convert,
    required GoogleSheet googleSheet,
    bool initLoad = false,
  })  : _googleSheet = googleSheet,
        _sheetName = sheetName,
        _convert = convert,
        super([]) {
    if (initLoad) {
      Future.delayed(const Duration(milliseconds: 10), reload);
    }
  }

  static GoogleSheetProvider<T> create<T extends BaseModel<T>>({
    required String name,
    required String sheetName,
    required DslConvert<T> convert,
    required ProviderBase<GoogleSheet> sheetProvider,
    bool initLoad = false,
  }) {
    return GoogleSheetProvider<T>(
      name: name,
      (ref) {
        final googleSheet = ref.read(sheetProvider);
        return GoogleSheetTabNotifier<T>._(
          ref,
          sheetName: sheetName,
          convert: convert,
          googleSheet: googleSheet,
          initLoad: initLoad,
        );
      },
    );
  }

  Future<List<T>> reload() {
    return _load();
  }

  Future<List<T>> _load({String? sheetName}) async {
    try {
      state = await _googleSheet.loadData(
        convert: _convert,
        sheet: sheetName ?? _sheetName,
      );
    } catch (error) {
      log.e('Could not load the ${sheetName ?? _sheetName} spreadsheet data: $error');
      rethrow;
    }

    log.d('Loaded ${state.length} records from the ${sheetName ?? _sheetName} google sheet.');
    return state;
  }

  Future<void> save(List<T> rows, {String? sheetName}) async {
    state = rows;
    try {
      await _googleSheet.saveData(
        convert: _convert,
        sheet: sheetName ?? _sheetName,
        rows: state,
      );
    } catch (error) {
      log.e('Could not save the ${sheetName ?? _sheetName} spreadsheet data: $error');
      rethrow;
    }
  }
}
