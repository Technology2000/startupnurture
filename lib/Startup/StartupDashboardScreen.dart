import 'package:flutter/material.dart';
 import 'Startupblogs.dart';
 import 'Startupchatbot.dart';
 import 'StartupIncubation.dart';
 import 'Startupprofile.dart';
class MyBottomBarDemo extends StatefulWidget {
  @override
  _MyBottomBarDemoState createState() => new _MyBottomBarDemoState();
}

class _MyBottomBarDemoState extends State<MyBottomBarDemo> {
  int _pageIndex = 0;
  PageController _pageController;

  List<Widget> tabPages = [
    StartblogScreen(),
    Chitbot(),
    StartupIncubation(),
    StartupProfile(),
  ];

  @override
  void initState(){
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem( icon: Icon(Icons.question_answer_outlined,
          color: Color(0xff39A388),
          ), title: Text("Blogs",
          style: TextStyle(
            color:Color(0xff39A388),
          ),
          )),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline,
    color: Color(0xff39A388),
    ), title: Text("Chatbot",
    style: TextStyle(
    color:Color(0xff39A388),
          ),),),
          BottomNavigationBarItem(icon: Icon(Icons.work,
    color: Color(0xff39A388),
    ), title: Text("Incubation",
    style: TextStyle(
    color:Color(0xff39A388)),
    ),
    ),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded,
    color: Color(0xff39A388),
    ), title: Text("Profile",
    style: TextStyle(
    color:Color(0xff39A388)),
    ),
          ),
        ],

      ),
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }
  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,duration: const Duration(milliseconds: 500),curve: Curves.easeInOut);
  }
}