import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 255,
      // height: 255,
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.deepPurple
      ),
      // Online image asset
      child: Image.network(
          'https://cdn-images.article.com/products/SKU12684/2890x1500/image72297.jpg',
        alignment: Alignment.center,
        // fit: BoxFit.fill, // will fit the image to the box, while the image shape would not remain original
        // fit: BoxFit.cover // fit the image to the box, while not changing the shape, but the image might not be complete
      ),
      // Local image asset
      // child: Image.asset('Config/Images/1634015306600_Wooden Kavichchi  wk106 for sale.jpg'),
    );
  }
}