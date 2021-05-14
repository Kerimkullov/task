// import 'package:MEGA24/helpers/constants/self_colors.dart';
// import 'package:MEGA24/helpers/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';
import 'package:task/constants/texts.dart';
import 'package:task/ui/screens/main_screen.dart';
import 'package:task/ui/screens/profile_screen.dart';

class BottomNavigator extends StatelessWidget {
  final int currentIndex;
  final Function onTap;
  static List<String> routes = ["/main", "/main", "/main", "/main", "/profile"];
  BottomNavigator({this.currentIndex = 0, this.onTap});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: TaskColors.main,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      onTap: (index) => this.onTap != null ? this.onTap(index) : null,
      currentIndex: this.currentIndex,
      selectedLabelStyle:
          TaskTextStyles.medium9.copyWith(color: TaskColors.main),
      unselectedLabelStyle: TaskTextStyles.medium9,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          activeIcon: Icon(Icons.home),
          label: "Главное",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          activeIcon: Icon(Icons.search),
          label: "Главное",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/bottom_icon_change.png",
            height: 24,
            width: 24,
          ),
          activeIcon: Image.asset(
            "assets/images/bottom_icon_change.png",
            height: 24,
            width: 24,
            color: TaskColors.main,
          ),
          label: "Главное",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/bottom_icon_notifications.png",
            height: 24,
            width: 24,
          ),
          activeIcon: Image.asset(
            "assets/images/bottom_icon_notifications.png",
            height: 24,
            width: 24,
          ),
          label: "Главное",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/bottom_icon_contact.png",
            height: 24,
            width: 24,
          ),
          activeIcon: Image.asset(
            "assets/images/bottom_icon_contact.png",
            height: 24,
            width: 24,
            color: TaskColors.main,
          ),
          label: "Главное",
        ),
      ],
    );
  }
}

Widget onTap(int i) {
  switch (i) {
    case 0:
      return MainScreen();
    case 1:
      return MainScreen();
    case 2:
      return MainScreen();
    case 3:
      return MainScreen();
    case 4:
      return ProfileScreen();
    default:
      return MainScreen();
  }
}
