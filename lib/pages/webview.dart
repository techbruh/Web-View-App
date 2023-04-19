import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main () => runApp (
    MaterialApp (
      debugShowCheckedModeBanner: false,
      home: BdriveApp() ,
    ));


class BdriveApp extends StatefulWidget {
  const BdriveApp({Key? key}) : super(key: key);

  @override
  State<BdriveApp> createState() => _BdriveAppState();
}

class _BdriveAppState extends State<BdriveApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: WebView(
          initialUrl: "https://broaddrive.net/",
          javascriptMode: JavascriptMode.unrestricted,
        ),

      ),
    );
  }
}



