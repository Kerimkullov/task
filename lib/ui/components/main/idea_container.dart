import 'package:flutter/material.dart';
import 'package:task/constants/texts.dart';

class IdeaContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            padding: EdgeInsets.fromLTRB(10, 10, 60, 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                "assets/images/main_idea.png",
                height: 50,
                width: 50,
              ),
              title: Text(
                "Начните зарабатывать!",
                style: TaskTextStyles.bold16,
              ),
              subtitle: Text(
                "Приобретите тариф Behype-PRO\nи начните свою карьеру!",
                style: TaskTextStyles.medium10,
              ),
            )),
        Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.only(top: 8),
            child: Image.asset(
              "assets/images/main_flash.png",
              height: 92,
              width: 82,
            )),
      ],
    );
  }
}
