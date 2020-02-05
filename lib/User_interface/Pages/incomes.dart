import 'package:flutter/material.dart';
import 'package:nagarro_cash_app/User_interface/Pages/home_screen.dart';
import 'package:nagarro_cash_app/utility/comp.dart';

class Income extends StatefulWidget {
  @override
  _IncomeState createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  TextEditingController _textController = TextEditingController();

  List<String> _listViewData = [
    "999",
    "25",
  ];

  _submit() {
    setState(() {
      _listViewData.add(_textController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Incomes"),
        backgroundColor: Colors.lightGreenAccent,
        elevation: 1.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Add"),
                          content: Container(
                            height: 160.0,
                            child: AlertComponent(),
                          ),
                        ));
              }),
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              })
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(labelText: "Add your Ammount"),
              keyboardType: TextInputType.text,
              controller: _textController,
            ),
          ),
          SizedBox(height: 15.0),
          Center(
            child: RaisedButton(
              onPressed: _submit,
              child: Text("Submit income"),
              color: Colors.lightGreenAccent,
            ),
          ),
          SizedBox(height: 30.0),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10.0),
              children: _listViewData.reversed.map((data) {
                return Dismissible(
                  key: Key(data),
                  child: ListTile(
                    title: Text(data),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
