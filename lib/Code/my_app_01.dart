import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(buildContext) {
    // Text object example
    // return const Center(child: Text('Hello Flutter, this is a user-defined object',
    //     textDirection: TextDirection.ltr,
    //     style: TextStyle(color: Color.fromRGBO(244, 120, 86, 1),
    //         fontSize: 40.0,
    //         backgroundColor: Color.fromRGBO(255, 255, 255, 1))
    // ));

    // Container object example
    return Center(
      child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                  color: Colors.blue,
                  width: 2),
              borderRadius: BorderRadius.circular(100),
              boxShadow: const[
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 20.0
                )
              ],
              //   gradient: const LinearGradient(
              //       colors: [Colors.blue, Colors.black])
              // ),
              gradient: const RadialGradient(
                  colors: [Colors.blue, Colors.black])
          ),
          child: const Text('Hello Flutter',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30.0,
                // backgroundColor: Colors.blue
              )
          )// sub-class of  decoration
      ),
    );
  }
}

