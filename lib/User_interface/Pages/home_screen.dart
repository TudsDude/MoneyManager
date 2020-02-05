import 'package:flutter/material.dart';
import 'package:nagarro_cash_app/utility/comp.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money administration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Homepage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final size = mediaQueryData.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Where are my money?"),
        backgroundColor: Colors.lightGreenAccent,
        elevation: 1.0,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.add, size: 35,color: Colors.white,),
              onPressed: (){
                showDialog(context: context,
                    builder: (context)=> new AlertDialog(
                      title: new Text("Add"),
                      content: new Container(
                        height: 160.0,
                        child: new AlertComponent(),
                      ),
                    ));
              }),
        ],

      ),
      body: new Stack(
        children: <Widget>[
          Center(
            child: ListTile(
              title: new Icon(Icons.account_balance_wallet, size: 64.0, color: Colors.lightGreenAccent,),
              subtitle: new Padding(padding: EdgeInsets.only(left: size / 3.5),
                child: new Text("How your money works?", style: TextStyle(fontSize: 16.0)),),
            ),
          )
        ],
      ),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total"),
                subtitle: new Text("R\$50"),
              ),
            ),
            Expanded(
              child: ListTile(
                title: new Text("Price"),
                subtitle: new Text("R\$0", style: TextStyle(color: Colors.red),),
              ),
            ),
            Expanded(
              child: new IconButton(icon: Icon(Icons.remove_red_eye, color: Colors.deepOrange,),
                  onPressed: (){

                  }),
            ),
          ],
        ),
      ),
    );
  }
}