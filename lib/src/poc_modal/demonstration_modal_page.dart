import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:poc_faq/src/poc_modal/components/app_webview.dart';

class DemonstrationModalPage extends StatefulWidget {
  const DemonstrationModalPage({Key? key}) : super(key: key);

  @override
  _DemonstrationModalPageState createState() => _DemonstrationModalPageState();
}

class _DemonstrationModalPageState extends State<DemonstrationModalPage> {
  String url = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POC - Modal '),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: const Size(250, 40)),
              child: const Text('POC - Bottom Sheet Modal'),
              onPressed: () {
                showMaterialModalBottomSheet(
                  context,
                  ContentModal(),
                );
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: const Size(250, 40)),
              child: const Text('POC - Flutter Modal Bottom Sheet'),
              onPressed: () {
                showFlutterModalBottomSheet(
                  context,
                  ContentModal(),
                );
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: const Size(250, 40)),
              child: const Text('POC - Flutter WebView'),
              onPressed: () {
                getURLWebView(
                  context,
                  UrlModal(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget ContentModal() {
    return Container(
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

  Widget UrlModal() {
    TextEditingController? urlController = TextEditingController();
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: urlController,
                  keyboardType: TextInputType.url,
                  decoration: const InputDecoration(labelText: 'URL'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        url = urlController.text;
                      });
                      Navigator.pop(context);
                      print('url: $url');
                      showFlutterWebView(
                          context,
                          AppWebView(
                            url: url,
                          ));
                    },
                    child: const Text('Abrir WebView'))
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void showMaterialModalBottomSheet(
    BuildContext context,
    Widget child,
  ) {
    showModalBottomSheet<dynamic>(
        enableDrag: true,
        barrierColor: const Color(0x70000000),
        builder: (BuildContext context) {
          return child;
        },
        context: context);
  }

  static void showFlutterModalBottomSheet(
    BuildContext context,
    Widget child,
  ) {
    showCupertinoModalBottomSheet<dynamic>(
        enableDrag: true,
        expand: false,
        barrierColor: const Color(0x70000000),
        builder: (BuildContext context) {
          return child;
        },
        context: context);
  }

  static void getURLWebView(
    BuildContext context,
    Widget child,
  ) {
    showCupertinoModalBottomSheet<dynamic>(
        enableDrag: true,
        expand: false,
        barrierColor: const Color(0x70000000),
        builder: (BuildContext context) {
          return child;
        },
        context: context);
  }

  static void showFlutterWebView(
    BuildContext context,
    Widget child,
  ) {
    showCupertinoModalBottomSheet<dynamic>(
        enableDrag: true,
        expand: false,
        barrierColor: const Color(0x70000000),
        builder: (BuildContext context) {
          return child;
        },
        context: context);
  }
}
