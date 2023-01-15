import 'package:flutter/material.dart';
import '../Config/Config_Class/weChatFont.dart';
import 'package:flutter_app/Config/JsonFiles/listData.dart';
import 'package:intl/intl.dart';

final f = new DateFormat('yyyy-MM-dd hh:mm');

class MyDynamicList extends StatelessWidget {
  const MyDynamicList({Key? key}): super(key: key);

  List<Widget> _initListData() {


    // version 1
    // var list = listData.map((value) {
    //   return ListTile(
    //     leading: Image.network(
    //       value['url']!,
    //       width: 300,
    //     ),
    //     title: Text(
    //       value['title']!,
    //     ),
    //     subtitle: Text('Status: '),
    //     style: ListTileStyle.list,
    //     trailing: Text('Create Time: ${f.format(DateTime.now())}'),
    //   );
    // });
    // return list.toList();

    // version 2
    List<Widget> list = [];
    for (var i = 0; i < listData.length; i++) {
      list.add(
          ListTile(
            leading: Image.network(
              listData[i]['url']!,
              width: 300,
            ),
            title: Text(
              listData[i]['title']!,
            ),
            subtitle: Text('Status: '),
            style: ListTileStyle.list,
            trailing: Text('Create Time: ${f.format(DateTime.now())}'),
          )
      );
      list.add(
          const Divider()
      );
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
        // height: 1000,
        child: ListView(
          // scrollDirection: Axis.horizontal,
          children: _initListData(),
        )
    );
  }
}

// motivation: slidable list for viewing items

class MyDynamicList2 extends StatelessWidget {
  List<String> list = [];
  MyDynamicList2({Key? key}): super(key: key) {
    for (var i = 0; i < 10; i++) {
      list.add("This is item ${i}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.fromLTRB(0, 300, 0, 0),
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              listData[index]['url']!,
              width: 300,
            ),
            title: Text(
              listData[index]['title']!,
            ),
            subtitle: Text('Status: '),
            style: ListTileStyle.list,
            trailing: Text('Create Time: ${f.format(DateTime.now())}'),

          );
        }
    );
  }
}