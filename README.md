# Multi Page Form
A simple package to create multiple form in one page.

## Installation 
Add `multi_page_form: ` in your `pubspec.yaml` dependencies.

## How to use
```dart
import 'package:flutter/material.dart';
import 'package:multi_page_form/multi_page_form.dart';

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
```  
## Example
```dart
import 'package:flutter/material.dart';
import 'package:multi_page_form/multi_page_form.dart';

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
```

## Params
  
  ```
   PhoneAuthSimple(
   @required appBar (Widget)
   @required totalPage (int) 
   @required pageList (String)
   @required onFormSubmitted (VoidCallBack)
    
    progressIndicatorColor (Color)
  )
  ```
  
### Upcoming Update
Working on making it more flexible and easy to use.
