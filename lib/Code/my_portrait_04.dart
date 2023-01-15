import 'package:flutter/material.dart';

class MyPortrait extends StatelessWidget {
  const MyPortrait({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        border: Border.all(
            color: Colors.yellow,
            width: 2),
        borderRadius: BorderRadius.circular(100),
        image: const DecorationImage(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Jean-Jacques_Rousseau_%28painted_portrait%29.jpg/1024px-Jean-Jacques_Rousseau_%28painted_portrait%29.jpg',),
          fit: BoxFit.cover
        )
      ),
    );
  }
}


class MyPortrait2 extends StatelessWidget {
  const MyPortrait2({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
          'https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_866/MTc5NTI0NTM1MTE1OTgxOTAz/the-life-and-times-of-the-ancient-greek-philosopher-socrates.webp',
          width: 150,
          height: 150,
          fit: BoxFit.cover
      ),
    );
  }
}