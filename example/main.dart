import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Home(
        totalPage: 3,
        pageList: <Widget>[page1(), page2(), page1()],
        onFormSubmitted: () {
          print("Form is submitted");
        },
      ),
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
          ),
          Container(
            height: 20.0,
            width: 20.0,
            color: Colors.red,
          ),
          Container(
            height: 20.0,
            width: 20.0,
            color: Colors.blue,
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
          ),
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.green,
          ),
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.blue,
          ),
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  final VoidCallback onFormSubmitted;
  final int totalPage;
  final List<Widget> pageList;
  Home(
      {@required this.totalPage,
      @required this.pageList,
      @required this.onFormSubmitted});
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int totalPage;
  int currentPage = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    totalPage = widget.totalPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: pageHolder(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  currentPage == 1
                      ? Container()
                      : FlatButton(
                          child: Text("Previous"),
                          onPressed: () {
                            setState(() {
                              currentPage = currentPage - 1;
                            });
                          },
                        ),
                  currentPage == totalPage
                      ? FlatButton(
                          child: Text("Submit"),
                          onPressed: widget.onFormSubmitted,
                        )
                      : FlatButton(
                          child: Text("Next"),
                          onPressed: () {
                            setState(() {
                              currentPage = currentPage + 1;
                            });
                          },
                        ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget pageHolder() {
    for (int i = 1; i <= totalPage; i++) {
      if (currentPage == i) {
        return widget.pageList[i - 1];
      }
    }
    return Container();
  }
}
