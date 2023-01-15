import 'package:flutter/material.dart';
import 'package:flutter_app/Config/JsonFiles/peopleData.dart';

class MyRatioContainer extends StatelessWidget {
  const MyRatioContainer({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2/1,
      child: Container(
        color: Colors.black,
      ),
    )
    ;
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          elevation: 5,
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: const [
              // AspectRatio(
              //     aspectRatio: 16/9,
              //   child: Image.network('https://www.learnreligions.com/thmb/HcehSFyJTR5WzV-mxJVL5MgF6R4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/SonOfGod1500x998-56a146083df78cf772691384.jpg'),
              // ),
              ListTile(
              //   leading: Image.network(
              // 'https://www.learnreligions.com/thmb/HcehSFyJTR5WzV-mxJVL5MgF6R4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/SonOfGod1500x998-56a146083df78cf772691384.jpg',
              //     fit: BoxFit.cover,
              //     height: 40,
              //     width: 40,
              //   ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.learnreligions.com/thmb/HcehSFyJTR5WzV-mxJVL5MgF6R4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/SonOfGod1500x998-56a146083df78cf772691384.jpg',
                  ),
                ),
                title: Text('Jesus Christ'),
                subtitle: Text('4 BC – AD 30 or 33'),
              ),
              Divider(),
              ListTile(
                title: Text('Known as: King of Israel, Son of God, Great Mentor of human beings'),
                ),
            ],
          ),
          // child: Text('Hello Ada'),
        ),
        Card(
          elevation: 5,
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: const [
              // AspectRatio(
              //       aspectRatio: 16/9,
              //       child: Image.network('https://cdn.britannica.com/17/193717-050-030D75E3/Julius-Caesar-statue-Rome-Italy.jpg'),
              //     ),
               ListTile(
                // leading: ClipOval(
                //   child: Image.network(
                //       'https://cdn.britannica.com/17/193717-050-030D75E3/Julius-Caesar-statue-Rome-Italy.jpg',
                //     fit: BoxFit.cover,
                //     height: 40,
                //     width: 40,
                //   ),
                // ),
                 leading: CircleAvatar(
                   backgroundImage: NetworkImage(
                     'https://cdn.britannica.com/17/193717-050-030D75E3/Julius-Caesar-statue-Rome-Italy.jpg',
                   ),
                 ),
                title: Text('Julius Caesar'),
                subtitle: Text('00 BC – 44 BC'),
              ),
              Divider(),
              ListTile(
                title: Text('Known as: Finisher of Roman Republic, Protector of Roman people, Great Conquerer, Great Genaral, Great Politician'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyDynamicCards extends StatelessWidget {
  const MyDynamicCards({Key?key}): super(key: key);
  
  List<Widget> _initCardData() {
    var list = peopleData.map((value){
      return Card(
        elevation: 5,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children:  [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  value['imageUrl']!,
                ),
              ),
              title: Text(value['title']!),
              subtitle: Text(value['subtitle']!),
            ),
            const Divider(),
            ListTile(
              title: Text('Description: ${value['description']}'),
            ),
          ],
        ),
      );
    }
    );

    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initCardData(),
    );
  }
}