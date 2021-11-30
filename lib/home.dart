import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: todo
  //TODO: Add state variables and functions
  int _selectedIndex = 0;

  List<Widget> pages = <Widget>[
    // ignore: todo
    // TODO: Replace with Card1
    Container(
      color: Colors.red,
    ),
    // ignore: todo
    // TODO: Replace with Card2
    Container(
      color: Colors.green,
    ),
    // ignore: todo
    // TODO: Replace with Card3
    Container(
      color: Colors.blue,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      //TODO: Show selected tab
      body: pages[_selectedIndex],
      // Center(
      //   child: Text(
      //     'Let\'s get cooking',
      //     style: Theme.of(context).textTheme.headline2,
      //   ),
      // ),
      //Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          // TODO: Set selected tab bar
          currentIndex: _selectedIndex,
          //11
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card2',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card3'),
          ]),
    );
  }
}
