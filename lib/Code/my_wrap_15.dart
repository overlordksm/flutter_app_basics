import 'package:flutter/material.dart';

// motivation: Wrap could support items unable to be wrapped into single rows or columns

class MyWrap extends StatelessWidget {
  const MyWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          spacing: 5,
          runSpacing: 5,
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceEvenly,
          children: [
            Button('The 1st series', onPressed: () {}),
            Button('The 2nd series', onPressed: () {}),
            Button('The 3rd series', onPressed: () {}),
            Button('The 4th series', onPressed: () {}),
            Button('The 5th series', onPressed: () {}),
            Button('The 6th series', onPressed: () {}),
            Button('The 7th series', onPressed: () {}),
            Button('The 8th series', onPressed: () {}),
            Button('The 9th series', onPressed: () {}),
            Button('The 10th series', onPressed: () {}),
            Button('The 11th series', onPressed: () {}),
            Button('The 12th series', onPressed: () {}),
            Button('The 13th series', onPressed: () {}),
            Button('The 14th series', onPressed: () {}),
            Button('The 15th series', onPressed: () {}),
            Button('The 16th series', onPressed: () {})
          ],
        ));
  }
}

class MyWrap2 extends StatelessWidget {
  const MyWrap2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Row(
          children: [
            Text('Popular Search',
                style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        const Divider(),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            Button('Table', onPressed: () {}),
            Button('Bed', onPressed: () {}),
            Button('Lamp', onPressed: () {}),
            Button('Cabinet', onPressed: () {}),
            Button('Mattress', onPressed: () {}),
            Button('Chair', onPressed: () {}),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Search History',
              style: Theme.of(context).textTheme.titleLarge,
            )
          ],
        ),
        const SizedBox(height: 40,),
        Column(
          children: const [
            ListTile(
              title: Text('Bed'),
            ),
            Divider(),
            ListTile(
              title: Text('Table'),
            )
          ],
        ),
        const SizedBox(height: 40,),
        Row(
          children: [
            OutlinedButton.icon(
                onPressed: (){},
                icon: Icon(Icons.delete),
                label: const Text(
                    'Clean up search history',
                )
            )
          ],
        )
      ],
    );
  }
}

// User Defined Elevated Button
class Button extends StatelessWidget {
  String text;
  void Function()? onPressed;

  Button(this.text, {Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(242, 255, 242, 242)),
            foregroundColor: MaterialStateProperty.all(Colors.black)),
        onPressed: onPressed,
        child: Text(text));
  }
}
