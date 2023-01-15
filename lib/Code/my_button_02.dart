import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 40,
        // transform: Matrix4.skewX(.2),
        // alignment: Alignment.center,
        // distance to objects outside of the container
        margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        // distance to objects inside of the container
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
              color: Colors.greenAccent,
              width: 2),
          boxShadow: const[
            BoxShadow(
                color: Colors.black,
                blurRadius: 10.0
            )
          ],
        ),
        child: const Text("Button",
            style: TextStyle(color: Colors.red,
              fontSize:25.0,
              // backgroundColor: Colors.blue
            ),
            textAlign: TextAlign.center
        )
    );
  }
}




