library multi_page_form;
import 'package:flutter/material.dart';

class MultiPageForm extends StatefulWidget {
  final Widget appBar;
  final VoidCallback onFormSubmitted;
  final int totalPage;
  final List<Widget> pageList;
  MultiPageForm(
      {
        @required this.appBar,
        @required this.totalPage,
        @required this.pageList,
        @required this.onFormSubmitted});
  _MultiPageFormState createState() => _MultiPageFormState();
}

class _MultiPageFormState extends State<MultiPageForm> {
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
      appBar: widget.appBar,
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
