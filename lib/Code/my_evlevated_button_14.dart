import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton impelementation');
              },
              child: const Text('Normal Button'),
            ),
            TextButton(
              onPressed: () {
                print('TextButton implementation');
              },
              child: const Text('Text Button'),
            ),
            OutlinedButton(
                onPressed: () {}, child: const Text('Outlined Button')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.wechat)),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.send),
              label: const Text('Send'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                  foregroundColor: MaterialStateProperty.all(Colors.black)),
            ),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.info),
                label: const Text('message')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add')),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          SizedBox(
            width: 250,
            height: 80,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('User Defined Big Button'),
            ),
          ),
          SizedBox(
              width: 250,
              height: 80,
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  label: const Text('User Defined Search Button'))),
        ]),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Register')),
                )),
            const Divider(),
            Expanded(
                flex: 2,
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Log in')),
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 100,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                child: const Text('Rounded Shape Button'),
              ),
            ),
            SizedBox(
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(const CircleBorder(
                          side: BorderSide(color: Colors.black12, width: 5)))),
                  child: const Text('Circle Button'),
                )),
          ],
        )
      ],
    );
  }
}
