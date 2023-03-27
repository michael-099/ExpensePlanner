import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Expense Planner")),
        body: Column(children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text("chart"),
              color: Colors.amber,
            ),
          ),
          Container(
            width: double.infinity,
            child: Card(child: Text("hllo")),
          )
        ]),
      ),
    );
  }
}

void main() {
  runApp(HomePage());
}
