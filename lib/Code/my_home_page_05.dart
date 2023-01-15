import 'package:flutter/material.dart';
import '../Config/Config_Class/weChatFont.dart';
import 'package:intl/intl.dart';

final f = new DateFormat('yyyy-MM-dd hh:mm');

class MyHomePageColumn extends StatelessWidget {
  const MyHomePageColumn({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 1),
        Icon(Icons.home,
          size: 80,
          color: Colors.black87,),
        SizedBox(height: 1),
        Icon(Icons.settings,
          size: 80,
          color: Colors.blueGrey,),
        Icon(Icons.search,
          size: 80,
          color: Colors.blueGrey,),
        Icon(Icons.personal_injury_outlined,
          size: 80,
          color: Colors.blueGrey,),
        Icon(Icons.category,
          size: 80,
          color: Colors.blueGrey,),
        Icon(Icons.shop,
          size: 80,
          color: Colors.blueGrey,),
        // user-defined icon
        Icon(weChatFont.weChat,
            size: 80,
            color: Colors.green)
      ],
    );
  }
}


class MyHomePageListView extends StatelessWidget {
  const MyHomePageListView({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return ListView(
    children: <Widget>[
      const ListTile(
        leading: Icon(Icons.home),
          title: Text('Home')
      ),
      const Divider(),
      const ListTile(
        leading: Icon(Icons.assignment),
        title: Text('Total Orders')
      ),
      const Divider(),
      const ListTile(
          leading: Icon(Icons.payment, color: Colors.red,),
          title: Text('Pending Payment Amount')
      ),
      const Divider(),
      const ListTile(
          leading: Icon(Icons.favorite, color: Colors.pinkAccent,),
          title: Text('My Favorites')
      ),
      const Divider(),
      const ListTile(
          leading: Icon(Icons.people),
          title: Text('Customer Service'),
        trailing: Icon(Icons.play_arrow_rounded),
      ),
      const Divider(),
      const ListTile(
          leading: Icon(Icons.wechat, color: Colors.green),
          title: Text('Share to Wechat Friends'),

      ),
      const Divider(),
      ListTile(
        leading: Image.network('https://photo.16pic.com/00/04/29/16pic_429661_b.jpg'),
        title: const Text('Subscribe to our official Ins account to get noticed on our product updates'),
        trailing: const Icon(Icons.play_arrow_rounded),
      )
    ]
    );
  }
}



