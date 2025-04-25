import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_google_sheets/src/store/google_sheet_tab_notifier.dart';
import 'package:wt_models/wt_models.dart';

typedef SpreadSheetProvider<T extends BaseModel<T>> = StateNotifierProvider<GoogleSheetTabNotifier<T>, List<T>>;
