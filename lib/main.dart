import 'package:flutter/material.dart';
import 'Widgets/LiftTheStateUpTX.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Personal Expenses'),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  child: Text('This is transaction report'),
                  color: Colors.grey,
                ),
                LiftTheStateUpTX(),
              ],
            ),
          )),
    );
  }
}
