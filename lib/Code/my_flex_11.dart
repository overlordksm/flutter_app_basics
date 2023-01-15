import 'package:flutter/material.dart';
import 'package:flutter_app/Config/JsonFiles/listData.dart';

// expanded objects have to be placed into Row() or Column() objects

class MyFlexBar extends StatelessWidget {
  const MyFlexBar({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Expanded(
          flex: 2,
          child: MyIconContainer(Icons.home),
        ),
        Expanded(
            flex: 1,
            child: MyIconContainer(Icons.search)
        ),
        Expanded(
            flex: 1,
            child: MyIconContainer(Icons.wechat)
        ),
      ],
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

// auto-adjust heights of items in Column(), widths of items in Row()

class MyFlexView extends StatelessWidget {
  const MyFlexView({Key?key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          color: Colors.grey,
          child: const Text(
              'Flexible SizedBox',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20.0,
              // backgroundColor: Colors.blue
            )),
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 400,
                child: Image.network(
                  'https://cdn.roveconcepts.com/sites/default/files/styles/picture_1024_2x/public/Diane_Sofa_PlushVelvet_Solstice_1.jpg',
                  fit: BoxFit.cover,
                )
              )
            ),
            Expanded(
                flex: 1,
                child: SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Jean-Jacques_Rousseau_%28painted_portrait%29.jpg/1024px-Jean-Jacques_Rousseau_%28painted_portrait%29.jpg',
                            fit: BoxFit.cover,
                          ),
                      ),
                      Expanded(
                          flex: 1,
                          child:Image.network(
                              'https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_866/MTc5NTI0NTM1MTE1OTgxOTAz/the-life-and-times-of-the-ancient-greek-philosopher-socrates.webp',
                              fit: BoxFit.cover,
                            ),
                          )
                    ],
                  )
                ),
            )
          ],
        )
      ],
    );
  }
}