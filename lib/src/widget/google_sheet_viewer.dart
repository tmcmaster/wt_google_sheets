import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GoogleSheetViewer extends StatefulWidget {
  final String sheetId;

  const GoogleSheetViewer({
    super.key,
    required this.sheetId,
  });

  @override
  State<GoogleSheetViewer> createState() => _GoogleSheetViewerState();
}

class _GoogleSheetViewerState extends State<GoogleSheetViewer> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    final sheetUrl = 'https://docs.google.com/spreadsheets/d/${widget.sheetId}/edit';

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setUserAgent(
          'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36')
      ..loadRequest(Uri.parse(sheetUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ValueKey('scaffold-${widget.sheetId}'),
      body: WebViewWidget(
        key: ValueKey('webview-${widget.sheetId}'),
        controller: _controller,
      ),
    );
  }
}
