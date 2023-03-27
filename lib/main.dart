import 'package:flutter/material.dart';
import './transaction.dart';

class HomePage extends StatelessWidget {
  List<Transaction> transaction = [
    Transaction(
        id: "001", name: "school fee", expense: 999.99, date: DateTime.now()),
    Transaction(id: "002", name: "rent", expense: 899.09, date: DateTime.now()),
    Transaction(
        id: "003", name: "Netflix ", expense: 19.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Expense Planner")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Text("chart"),
                color: Colors.amber,
              ),
            ),
            Column(
              children: transaction.map((e) {
                return Container(
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        Container(child: Text('price')),
                        Column(
                          children: [Text("${e.expense}"), Text("${e.date}")],
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(HomePage());
}
