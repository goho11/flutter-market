import 'package:carrot/screens/chatting/chatting_screen.dart';
import 'package:carrot/screens/home/home_screen.dart';
import 'package:carrot/screens/my_carrot/my_carrot_screen.dart';
import 'package:carrot/screens/near_me/near_me_screen.dart';
import 'package:carrot/screens/neighborhood_life/neighborhood_life_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  // 1. 상태
  int selectedIndex = 2;

  // 2. 행위
  void onClickBottomNavigation(int value) {
    selectedIndex = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 랜덤 액세스
      body: IndexedStack(
        // 로딩 시 body만 바뀜
        index: selectedIndex, // 제일 먼저 뜨는 화면(인덱스 번호)
        children: [
          // 바텀 네비게이션 순서대로 쌓기
          HomeScreen(),
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) { // value = 클릭된 인덱스값
          onClickBottomNavigation(value);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_on_square), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.placemark), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: ""),
        ],
      ),
    );
  }
}
