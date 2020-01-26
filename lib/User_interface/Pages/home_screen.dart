import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        
        body: Center(
          
              child: RaisedButton(
                color: Colors.lightGreenAccent,
                onPressed: () {},
                child: Text("Touch me right now"),
              )
            
          ),
        );
  }
}
