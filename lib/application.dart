import 'package:flutter/material.dart';
import 'package:money_tracker/routes.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Money Tacker",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: routes,
    );
  }
}
