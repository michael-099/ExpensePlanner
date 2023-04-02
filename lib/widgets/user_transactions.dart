import 'package:flutter/material.dart';
import './input.dart';
import './transaction.dart';

class user_transactions extends StatefulWidget {
  user_transactionsState createState() => user_transactionsState();
}

class user_transactionsState extends State<user_transactions> {
  Widget build(BuildContext context) {
    return Column(children: <Widget>[input(), transaction()]);
  }
}
