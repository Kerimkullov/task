import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';
import 'package:task/constants/texts.dart';
import 'package:task/ui/components/bottom_navigation/bottom_navigator.dart';
import 'package:task/ui/components/profile/profile_content.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: TaskColors.profileGradient1,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Профиль",
          style: TaskTextStyles.bold20.copyWith(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(gradient: TaskColors.profileGradient),
          padding: EdgeInsets.only(left: 18, right: 18),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  height: 203,
                  width: 203,
                  child: Image.asset("assets/images/profile_image.png"),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              ProfileContent()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              color: Colors.white,
              height: 48,
              padding: EdgeInsets.only(left: 38),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/profile_logout.png",
                    height: 28,
                    width: 28,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    "Выйти",
                    style: TaskTextStyles.medium14,
                  )
                ],
              ),
            ),
          ),
          BottomNavigator(
            currentIndex: 4,
            onTap: (index) {
              print("this index : $index");
              if (index == 4) {
                Navigator.pushReplacementNamed(
                    context, BottomNavigator.routes[index]);
              } else {
                Navigator.pushReplacementNamed(
                    context, BottomNavigator.routes[index]);
              }
            },
          ),
        ],
      ),
    );
  }
}
