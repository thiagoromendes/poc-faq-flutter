import 'package:flutter/material.dart';
import 'package:poc_faq/src/poc_html/demonstration_html_page.dart';
import 'package:poc_faq/src/poc_html/description_html_page.dart';
import 'package:poc_faq/src/poc_modal/demonstration_modal_page.dart';
import 'package:poc_faq/src/poc_modal/description_modal_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
          child: ListView(
            children: [
              const Text(
                'Estudos realizados',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.auto_awesome_motion_outlined,
                    color: Colors.lightBlue,
                  ),
                  title: const Text(
                    'POC Modal/WebView',
                    style: TextStyle(color: Colors.blueGrey),
                    //textAlign: TextAlign.center,
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DescriptionModalPage()));
                      },
                      icon: const Icon(
                        Icons.comment_bank_outlined,
                        color: Colors.cyan,
                      )), //(Icons.more_vert),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DemonstrationModalPage()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.chrome_reader_mode_outlined,
                    color: Colors.lightBlue,
                  ),
                  title: const Text(
                    'POC FAQ - HTML',
                    style: TextStyle(color: Colors.blueGrey),
                    //textAlign: TextAlign.center,
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DescriptionHTMLPage()));
                      },
                      icon: const Icon(
                        Icons.comment_bank_outlined,
                        color: Colors.cyan,
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DemonstrationHTMLPage()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
