import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // onWillPop: () => Future.value(false),
      onWillPop: () async {
        _popNavigatorWithResult(context, 'from_back');
        return false;
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => _popNavigatorWithResult(context, 'from_button'),
        ),
        body: Container(
          child: Center(
            child: Text('Page 2',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }

  void _popNavigatorWithResult(BuildContext context, String result) {
    Navigator.pop(context, result);
  }
}
