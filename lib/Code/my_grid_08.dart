import 'package:flutter/material.dart';
import '../Config/Config_Class/weChatFont.dart';
import 'package:flutter_app/Config/JsonFiles/listData.dart';
import 'package:intl/intl.dart';


// motivation: quickly create grid of items with fixed length

final f = new DateFormat('yyyy-MM-dd hh:mm');

class MyGrid extends StatelessWidget {
  const MyGrid({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      children: const [
        Icon(Icons.phone_callback,
            size: 50,),
        Icon(Icons.home,
          size: 50,
          color: Colors.black87,),
        Icon(Icons.settings,
          size: 50,
          color: Colors.blueGrey,),
        Icon(Icons.search,
          size: 50,
          color: Colors.blueGrey,),
        Icon(Icons.help_center,
          size: 50,
          color: Colors.blueGrey,),
        Icon(Icons.category,
          size: 50,
          color: Colors.blueGrey,),
        Icon(Icons.shop,
          size: 50,
          color: Colors.blueGrey,),
        // user-defined icon
        Icon(weChatFont.weChat,
            size: 50,
            color: Colors.green),
        Icon(Icons.contacts,
          size: 50,
        ),
        Icon(Icons.generating_tokens,
          size: 50
        )
      ],
    );
  }
}

class MyGrid2 extends StatelessWidget {
  const MyGrid2({Key? key}): super(key: key);
  List<Widget> _initGridData() {
    var list = listData.map((value) {
      return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26)
          ),
          child: Column(
            children: [Image.network(
              value['url']!,
              width: 300,
              height: 300,
            ),
              Text(
                'Item Name: ${value['title']}'!,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
        ]
      )
      );
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
    //   childAspectRatio: 1.5,
    //   crossAxisCount: 2,
    //   children: _initListData(),
    // );

    return GridView.extent(
      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 1,
      maxCrossAxisExtent: 500,
      children: _initGridData(),
    );
  }
}

class MyGridDynamic extends StatelessWidget {
  const MyGridDynamic({Key? key}): super(key: key);

  Widget _initGridData(context, index) {
    return Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black26)
          ),
          child: Column(
              children: [Image.network(
                listData[index]['url']!,
                width: 300,
                height: 300,
              ),
                Text(
                  'Item Name: ${listData[index]['title']}'!,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ]
          )
      );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
          crossAxisCount: 2,
        ),
        itemBuilder: _initGridData
    );
  }
}