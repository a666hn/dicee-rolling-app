import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiceeRollingApp(
    title: 'DICEE ROLLING APP',
  ));
}

class DiceeRollingApp extends StatelessWidget {
  const DiceeRollingApp({Key? key, this.title = ''}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            title,
            style: const TextStyle(
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

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if (leftDiceNumber == 6) {
                      leftDiceNumber = 1;
                    } else {
                      leftDiceNumber++;
                    }
                  });

                  if (kDebugMode) {
                    print(leftDiceNumber);
                  }
                },
                child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if (rightDiceNumber == 6) {
                      rightDiceNumber = 1;
                    } else {
                      rightDiceNumber++;
                    }
                  });

                  if (kDebugMode) {
                    print(rightDiceNumber);
                  }
                },
                child: Image.asset('assets/images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
