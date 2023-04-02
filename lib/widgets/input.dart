import 'package:flutter/material.dart';

class input extends StatelessWidget {
  String TFtitle = '';
  String TFamount = '';
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (value) => TFtitle = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'amount'),
              onChanged: (value) => TFamount = value,
            ),
            TextButton(
              child: Text("Add transaction"),
              onPressed: () {
                print(TFtitle);
                print(TFamount);
              },
            )
          ],
        ),
      ),
    );
  }
}
