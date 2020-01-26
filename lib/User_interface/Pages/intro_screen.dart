import 'package:flutter/material.dart';
import 'package:nagarro_cash_app/User_interface/Widgets/walkthrough.dart';
import 'package:nagarro_cash_app/utility/navi.dart';

import 'package:nagarro_cash_app/utility/strings.dart';

class IntroScreenPage extends StatefulWidget {
  @override
  IntroScreenPageState createState() {
    return IntroScreenPageState();
  }
}

class IntroScreenPageState extends State<IntroScreenPage> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == 3) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFEEEEEE),
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 10,
            child: PageView(
              children: <Widget>[
                Walkthrough(
                  title: Strings.wt1,
                  content: Strings.wc1,
                  imageIcon: Icons.account_circle,
                ),
                Walkthrough(
                  title: Strings.wt2,
                  content: Strings.wc2,
                  imageIcon: Icons.add_box,
                ),
                Walkthrough(
                  title: Strings.wt3,
                  content: Strings.wc3,
                  imageIcon: Icons.monetization_on,
                ),
                Walkthrough(
                  title: Strings.wt4,
                  content: Strings.wc4,
                  imageIcon: Icons.security,
                ),
              ],
              controller: controller,
              onPageChanged: _onPageChanged,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text(lastPage ? "" : Strings.skip,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () =>
                      lastPage ? null : Navi.goToHome(context),
                ),
                FlatButton(
                  child: Text(lastPage ? Strings.gotIt : Strings.next,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () => lastPage
                      ? Navi.goToHome(context)
                      : controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}