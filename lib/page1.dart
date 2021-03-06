import 'package:flutter/material.dart';

import 'page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var navigationResult = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Page2()));

          if (navigationResult == 'from_back') {
            showDialog(
                context: context,
                builder: (context) =>
                    AlertDialog(title: Text('Navigation from back')));
          } else if (navigationResult == 'from_button') {
            showDialog(
                context: context,
                builder: (context) =>
                    AlertDialog(title: Text('Navigation from button')));
          }
        },
      ),
      body: Container(
        child: Center(
          child: Text(
            'Page 1',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
