import 'package:flutter/material.dart';
import 'package:nagarro_cash_app/User_interface/Pages/expenses.dart';
import 'package:nagarro_cash_app/User_interface/Pages/incomes.dart';

class AlertComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.attach_money),
            ),
            Padding(
                padding: EdgeInsets.all(2.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Income()));
                  },
                  child:  Text("Incomes"),
                ))
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.money_off),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Expenses()));
                },
                child: Text("Expenses"),
              ),
            )
          ],
        ),
      ],
    );
  }
}
