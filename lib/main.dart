import 'package:flutter/material.dart';
import './home_page.dart';
import './search_page.dart';
import './dm_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    DMPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '', // テキストなし
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '', // テキストなし
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: '', // テキストなし
          ),
        ],
      ),
    );
  }
}