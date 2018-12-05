import 'package:flutter/material.dart';
import '../lib/multi_page_form.dart';

class Test extends StatefulWidget {
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return MultiPageForm(
      appBar: AppBar(title: Text("My Form"),),
      totalPage: 3,
      pageList: <Widget>[page1(), page2(), page3()],
      onFormSubmitted: () {
        print("Form is submitted");
      },
    );
  }
  Widget page1() {
    return Container(
      child: ListView(
        children: [
          Container(
            height: 20.0,
            width: 20.0,
            color: Colors.purple,
          )
        ],
      ),
    );
  }

  Widget page2() {
    return Container(
      child: ListView(
        children: [
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }

  Widget page3() {
    return Container(
      child: ListView(
        children: [
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}