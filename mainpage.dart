import 'package:flutter/material.dart';
import 'homepage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ho - Services"),
      ),
      backgroundColor: Color(0xFF0F0F0),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState((){
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book),label: "Booking"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.more),label: "more"),
        ]
      ),
      body: getBodyWidget(),
    );
  }

  getBodyWidget(){
    return(_currentIndex==0)? HomePage():Container();
  }
}