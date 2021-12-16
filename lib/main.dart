import 'package:flutter/material.dart';

void main() {
  runApp(const DiceeRollingApp());
}

class DiceeRollingApp extends StatelessWidget {
  const DiceeRollingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade400,
        appBar: AppBar(
          backgroundColor: Colors.red.shade400,
          title: const Text(
            'DICEE ROLLING APP',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
