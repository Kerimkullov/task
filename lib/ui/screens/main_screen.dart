import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';
import 'package:task/constants/texts.dart';
import 'package:task/ui/components/bottom_navigation/bottom_navigator.dart';
import 'package:task/ui/components/main/category.dart';
import 'package:task/ui/components/main/company_container.dart';
import 'package:task/ui/components/main/idea_container.dart';
import 'package:task/ui/components/main/page_controller.dart';
import 'package:task/ui/components/main/piar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TaskColors.mainGradient1,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: TaskColors.mainGradient1,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            'Главная',
            style: TaskTextStyles.bold20.copyWith(color: Colors.white),
          )),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(gradient: TaskColors.mainGradient),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [PageControllerContainer(true), IdeaContainer()],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: TaskColors.background2,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Категории",
                      style: TaskTextStyles.bold18,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CategoryContainer(),
                    SizedBox(
                      height: 20,
                    ),
                    forTitles("Взаимопиар"),
                    SizedBox(
                      height: 10,
                    ),
                    PiarContainer(),
                    SizedBox(
                      height: 20,
                    ),
                    forTitles("Рекламные кампании"),
                    SizedBox(
                      height: 10,
                    ),
                    CompanyContainer(),
                    SizedBox(
                      height: 20,
                    ),
                    forTitles("Бартер"),
                    SizedBox(
                      height: 10,
                    ),
                    CompanyContainer(),
                    SizedBox(
                      height: 20,
                    ),
                    PageControllerContainer(false)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigator(
        currentIndex: 0,
        onTap: (index) {
          print("this index : $index");
          if (index == 0) {
            Navigator.pushReplacementNamed(
                context, BottomNavigator.routes[index]);
          } else {
            Navigator.pushReplacementNamed(
                context, BottomNavigator.routes[index]);
          }
        },
      ),
    );
  }
}

Widget forTitles(String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TaskTextStyles.bold18,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            color: TaskColors.main, borderRadius: BorderRadius.circular(50)),
        child: Text(
          "Все",
          style: TaskTextStyles.regular12.copyWith(color: Colors.white),
        ),
      ),
    ],
  );
}
