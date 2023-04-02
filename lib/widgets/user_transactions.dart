import 'package:flutter/material.dart';
import './input.dart';
import '../models/transaction.dart';
import './transaction.dart';

class user_transactions extends StatefulWidget {
  user_transactionsState createState() => user_transactionsState();
}

class user_transactionsState extends State<user_transactions> {
  Widget build(BuildContext context) {
     List<Transaction> transactionList = [
    Transaction(
        id: "001", name: "school fee", expense: 999.99, date: DateTime.now()),
    Transaction(id: "002", name: "rent", expense: 899.09, date: DateTime.now()),
    Transaction(
        id: "003", name: "Netflix ", expense: 19.99, date: DateTime.now())
  ];
    return Column(children: <Widget>[input(), transaction(transactionList)]);
  }
}
