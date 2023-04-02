import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';
import 'user_transactions.dart';

class transaction extends StatelessWidget {
  List<Transaction> transactions;
  transaction(this.transactions);

  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((e) {
        return Container(
          child: Card(
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "\$${e.expense}",
                    style: TextStyle(
                      color: Colors.green.shade600,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green.shade100, width: 2),
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
                      DateFormat.yMMMd().format(e.date),
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
    );
  }
}
