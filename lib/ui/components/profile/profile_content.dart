import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';
import 'package:task/constants/texts.dart';
import 'package:task/ui/components/auth/custom_button.dart';

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(29),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/profile_flash.png",
                height: 15,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "Luisa Alow",
                style: TaskTextStyles.bold20,
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            "Insta-блогер",
            style: TaskTextStyles.medium9.copyWith(color: Color(0xffBDBDBD)),
          ),
          SizedBox(
            height: 27,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Almaty",
                  style: TaskTextStyles.regular12
                      .copyWith(color: TaskColors.profileTextColor),
                ),
                VerticalDivider(),
                Row(
                  children: [
                    Text(
                      "4.6 ",
                      style: TaskTextStyles.bold20,
                    ),
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
                VerticalDivider(),
                Text(
                  "25 лет",
                  style: TaskTextStyles.regular12
                      .copyWith(color: TaskColors.profileTextColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            "Описание профиля. ❤️ Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: TaskTextStyles.regular12,
          ),
          SizedBox(
            height: 31,
          ),
          Row(
            children: [
              SizedBox(
                width: 16,
              ),
              profileButtons("Мода", 3),
              SizedBox(
                width: 16,
              ),
              profileButtons("Красота", 4),
              SizedBox(
                width: 16,
              ),
              profileButtons("Здоровье", 4),
              SizedBox(
                width: 16,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Редактировать",
              style: TaskTextStyles.medium14.copyWith(color: Color(0xffF90640)),
            ),
          )
        ],
      ),
    );
  }
}

Widget profileButtons(String name, int size) {
  return Expanded(
    flex: size,
    child: CustomButton(
      height: 24,
      onTap: null,
      color: TaskColors.profileTextColor,
      child: Text(
        name,
        style: TaskTextStyles.regular12.copyWith(color: Color(0xff6322E0)),
      ),
    ),
  );
}
