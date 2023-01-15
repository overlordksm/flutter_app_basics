import 'package:flutter/material.dart';

// to make containers aligned with the same height, we could use a container to encapsulate items

class MyItemPage extends StatelessWidget {
  const MyItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
      height: 1000,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget> [
            Column(
                children: [
                  SizedBox(
                    height: 700,
                    child: Image.network('https://cdn.roveconcepts.com/sites/default/files/styles/picture_1024_2x/public/Diane_Sofa_PlushVelvet_Solstice_1.jpg'),
                  ),
                  const SizedBox(
                    height: 100,
                    child: Text(
                      'Sofa',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                  )
                ]
            ),
            const Divider(),
            Column(
                children: [
                  SizedBox(
                    height: 700,
                    child: Image.network('https://ak1.ostkcdn.com/images/products/11850501/Liberty-Kitchen-Cart-with-Wood-Top-9ea188f0-a36f-4665-9cc6-4e1af6e9438c_1000.jpg',),
                  ),
                  const SizedBox(
                    height: 100,
                    child: Text(
                      'Kitchen Cart',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ]
            ),
            const Divider(),
            Column(
                children: [
                  SizedBox(
                    height: 700,
                    child: Image.network('https://ak1.ostkcdn.com/images/products/is/images/direct/65bcd4a4fca8a55527bd55c191aa78ded066477f/WYNDENHALL-Hawthorne-9-piece-Dining-Set.jpg',),
                  ),
                  const SizedBox(
                    height: 100,
                    child: Text(
                      'Dinning Set',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ]
            ),
            const Divider(),
            Column(
                children: [
                  SizedBox(
                    height: 700,
                    child: Image.network('https://www.thejoinery.com/sites/default/files/styles/product_slide/public/products/WhitmanBed2020.jpg?itok=JPvTakqE',),
                  ),
                  const SizedBox(
                    height: 100,
                    child: Text(
                      'Bed',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ]
            ),
            const Divider(),
            Column(
                children: [
                  SizedBox(
                    height: 700,
                    child: Image.network('https://raymourflanigan.scene7.com/is/image/RaymourandFlanigan/FW_HMLG_510519284_3000?wid=2000&fit=fit%2C1',),
                  ),
                  const SizedBox(
                    height: 100,
                    child: Text(
                      'Cabinet',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ]
            ),
          ]
      ),

    );
  }
}