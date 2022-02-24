import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppWebView extends StatefulWidget {
  final String? url;

  const AppWebView({Key? key, this.url}) : super(key: key);

  @override
  _AppWebViewState createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  final Set<Factory> gestureRecognizers =
      [Factory(() => EagerGestureRecognizer())].toSet();

  final UniqueKey key = UniqueKey();

  late WebViewController webviewController;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              })),
      body: Stack(
        children: <Widget>[
          WebView(
              key: key,
              initialUrl: widget.url,
              javascriptMode: JavascriptMode.unrestricted,
              gestureNavigationEnabled: true,
              onPageStarted: (_) {},
              gestureRecognizers: gestureRecognizers
                  as Set<Factory<OneSequenceGestureRecognizer>>?,
              onWebViewCreated: (WebViewController controller) {
                webviewController = controller;
              },
              onPageFinished: (String initialUrl) {}),
        ],
      ),
    );
  }
}
