import 'package:flutter/material.dart';
import 'models/transaction.dart';
import 'package:intl/intl.dart';
import './widgets/user_transactions.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Expense Planner")),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: const Card(
                child: Text("chart"),
                color: Color.fromARGB(255, 171, 206, 172),
              ),
            ),
            user_transactions()
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(HomePage());
}
