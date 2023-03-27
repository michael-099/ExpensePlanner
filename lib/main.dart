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
                color: Color.fromARGB(255, 171, 206, 172),
              ),
            ),
            Column(
              children: transaction.map((e) {
                return Container(
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "${e.expense}",
                            style: TextStyle(
                              color: Colors.green.shade600,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.green.shade100, width: 2),
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${e.name}",
                              style: TextStyle(
                                  color: Colors.green.shade700,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18),
                            ),
                            Text(
                              "${e.date}",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            )
                          ],
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
