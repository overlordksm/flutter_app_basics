import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/Tabs/home.dart';
import 'package:flutter_app/Pages/Tabs/category.dart';
import 'package:flutter_app/Pages/Tabs/settings.dart';
import 'package:flutter_app/Pages/Tabs/product_info.dart';
import 'package:flutter_app/Pages/Tabs/message.dart';

// StatelessWidget won't re-build and show updated status of objects even the variable values have changed

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // State<MyHomePage> createState() => _MyStatefulCalculator();
  // State<MyHomePage> createState() => _MyStatefulList();
  State<MyHomePage> createState() => _MyStatefulBottomTabs();
}

class _MyStatefulCalculator extends State<MyHomePage> {
  int _numCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_numCount',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _numCount++;
                      });
                    },
                    child: Text(
                      'Add',
                      style: Theme.of(context).textTheme.titleMedium,
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _numCount--;
                      });
                    },
                    child: Text(
                      'Deduct',
                      style: Theme.of(context).textTheme.titleMedium,
                    ))
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _numCount++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyStatefulList extends State<MyHomePage> {
  List<String> _list = [];
  int _num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _num++;
            _list.add('This is list $_num');
          });
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: _list.map((value) {
          return ListTile(
            title: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class _MyStatefulBottomTabs extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const CategoryPage(),
    const MessagePage(),
    const SettingsPage(),
    const ProductInfoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Row(
            children: const [
              Expanded(
                flex: 1,
                // child: DrawerHeader(
                //   decoration: const BoxDecoration(
                //       color: Colors.lightBlue,
                //       image: DecorationImage(
                //           image: NetworkImage(
                //               'https://img.freepik.com/premium-vector/cute-bear-carrying-big-snowball-make-snowman_547439-705.jpg?w=1060'),
                //           fit: BoxFit.cover)
                //   ),
                //   child: Column(
                //     children: const [
                //       ListTile(
                //           title: Text('Rousseau'),
                //           leading: CircleAvatar(
                //             backgroundImage: NetworkImage('https://iep.utm.edu/wp-content/media/rousseau.jpg'),
                //             // child: Icon(Icons.menu),
                //           )
                //       ),
                //       ListTile(
                //         title: Text('jjr@gmail.com'),
                //         leading: Icon(Icons.email),
                //       )
                //     ],
                //   ),
                // ),
                child: UserAccountsDrawerHeader(
                  accountName: Text('Rousseau'),
                  accountEmail: Text('jjr@gmail.com'),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.freepik.com/premium-vector/cute-bear-carrying-big-snowball-make-snowman_547439-705.jpg?w=1060'
                          ),
                          fit: BoxFit.cover)
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://iep.utm.edu/wp-content/media/rousseau.jpg'),
                  ),
                ),
              )
            ],
          ),
          const ListTile(
            title: Text('User Info Center'),
            leading: CircleAvatar(
              child: Icon(Icons.people),
            ),
          ),
          const ListTile(
              title: Text('Archived Images'),
              leading: CircleAvatar(
                child: Icon(Icons.archive),
              ))
        ],
      )),
      // endDrawer: const Drawer(
      //   child: Text('Right side bar'),
      // ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home Page'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info), label: 'Product Info'),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 10),
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(60)),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 2 ? Colors.blue : Colors.lightBlue,
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
