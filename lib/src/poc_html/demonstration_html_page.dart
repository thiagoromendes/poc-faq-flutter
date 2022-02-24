import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:poc_faq/src/poc_html/html_content.dart';

class DemonstrationHTMLPage extends StatefulWidget {
  const DemonstrationHTMLPage({Key? key}) : super(key: key);

  @override
  _DemonstrationHTMLPageState createState() => _DemonstrationHTMLPageState();
}

class _DemonstrationHTMLPageState extends State<DemonstrationHTMLPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demonstração - POC HTML'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 15,
            right: 15,
            bottom: 10,
          ),
          child: Column(
            children: [
              Html(
                data: HTMLContent.TEST,
                style: {"span": Style(color: Colors.grey)},
                onLinkTap: (url, _, __, ___) async {
                  if (url!.startsWith('modal')) {
                    showFlutterWebView(context, ContentModal());
                  }
                  await launch(
                    url,
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.note, color: Colors.blue),
                    CupertinoButton(
                      child: const Text(
                        'Ver prazos de garantia de atendimento',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onPressed: () =>
                          showFlutterWebView(context, ContentModal()),
                    ),
                  ],
                ),
              )
            ],
          ),
        )));
  }

  void showFlutterWebView(
    BuildContext context,
    Widget child,
  ) async {
    showCupertinoModalBottomSheet<dynamic>(
        enableDrag: true,
        expand: false,
        barrierColor: const Color(0x70000000),
        builder: (BuildContext context) {
          return child;
        },
        context: context);
  }

  Widget ContentModal() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Conteúdo do Modal',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Fechar Modal'))
            ],
          ),
        ),
      ),
    );
  }
}
