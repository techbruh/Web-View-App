import 'package:broaddrive/pages/splash.dart';
import 'package:broaddrive/pages/webview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main () async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => BdriveSplash(),
      '/home': (context) => BdriveApp(),
    },
  ));
}