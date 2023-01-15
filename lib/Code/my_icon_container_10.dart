import 'package:flutter/material.dart';

// motivation: constructing objects by user-defined standards

class MyIconContainerHomePage extends StatelessWidget {
  const MyIconContainerHomePage({Key?key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     MyIconContainer(Icons.home),
    //     MyIconContainer(Icons.search)
    //   ],
    // );
    return Container(
      margin: const EdgeInsets.fromLTRB(120, 200, 0, 0),
      width: 360,
      height: 120,
      color: Colors.black,
      child: Row(
        children: [
          MyIconContainer(Icons.home),
          MyIconContainer(Icons.search),
          MyIconContainer(Icons.wechat)
        ],
      ),
    );
  }
}

class MyIconContainer extends StatelessWidget {
  Color color;
  IconData icon;
  MyIconContainer(this.icon, {Key? key, this.color = Colors.grey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // padding: EdgeInsets.fromLTRB(200, 200, 0, 0),
      height: 120,
      width: 120,
      color: color,
      child: Icon(
        icon,
        color: Colors.white,
        size: 48,
      )
      );
  }
}
