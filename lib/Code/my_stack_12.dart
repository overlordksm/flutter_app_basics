import 'package:flutter/material.dart';

class MyStackContainer extends StatelessWidget {
  const MyStackContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        width: 500,
        color: Colors.black,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                left: 0,
                bottom: 0,
                height: 100,
                width: 100,
                child: Container(
                  width: 400,
                  height: 300,
                  color: Colors.red,
                )),
            Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
            const Text(
              'Hey Flutter',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                // backgroundColor: Colors.blue
              ),
            ),
          ],
        ));
  }
}

class MyStackListView extends StatelessWidget {
  const MyStackListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        ListView(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          children: const [
            ListTile(
              title: Text('This is a list'),
            ),
            ListTile(
              title: Text('This is a list'),
            ),
            ListTile(
              title: Text('This is a list'),
            ),
            ListTile(
              title: Text('This is a list'),
            ),
            ListTile(
              title: Text('This is a list'),
            ),
            ListTile(
              title: Text('This is a list'),
            ),
          ],
        ),
        Positioned(
            left: 0,
            top: 0,
            width: size.width,
            height: 44,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    height: 44,
                    color: Colors.black,
                    child: const Text(
                      'Secondary Directory',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}

class MyAlignWidget extends StatelessWidget {
  const MyAlignWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.black,
      child: Stack(
        children: const [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Purchase',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              'Save',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
