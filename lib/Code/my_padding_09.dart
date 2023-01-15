import 'package:flutter/material.dart';

// motivation: takes less memory than Container objects
class MyPadding extends StatelessWidget {
  const MyPadding({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(10),
        child: Text('Hello Flutter! '),
    );
  }
}