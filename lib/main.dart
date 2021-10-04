import 'package:flutter/material.dart';
import 'locator.dart';
import 'ui/app_body.dart';

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AppBody(),
      ),
    );
  }
}
