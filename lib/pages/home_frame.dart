import 'package:flutter/material.dart';
import 'package:ttwui/components/app_color.dart';
import 'package:ttwui/components/tweet/index.dart';

class HomeFrame extends StatefulWidget {
  HomeFrame() : super();

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeFrame> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _dispatch(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: AppColor.primary,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: SizedBox(),
              icon: Icon(Icons.chat_bubble_outline, color: Colors.white),
              activeIcon:
                  Icon(Icons.chat_bubble_outline, color: Colors.white)),
          BottomNavigationBarItem(
              title: SizedBox(),
              icon: Icon(Icons.alternate_email, color: Colors.white),
              activeIcon: Icon(Icons.alternate_email, color: Colors.white)),
          BottomNavigationBarItem(
              title: SizedBox(),
              icon: Icon(Icons.format_align_justify, color: Colors.white),
              activeIcon:
                  Icon(Icons.format_align_justify, color: Colors.white)),
          BottomNavigationBarItem(
              title: SizedBox(),
              icon: Icon(Icons.mail_outline, color: Colors.white),
              activeIcon: Icon(Icons.mail_outline, color: Colors.white)),
        ],
      ),
    );
  }

  Widget _dispatch(int index) {
    switch (index) {
      default:
        return TweetIndex();
    }
  }
}
