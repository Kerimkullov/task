import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';
import 'package:task/constants/texts.dart';
import 'package:task/ui/components/auth/custom_button.dart';
import 'package:task/ui/components/auth/custom_input.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: TaskColors.background,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 24,
          color: TaskColors.main,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 18, right: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Вход',
              style: TaskTextStyles.bold20,
            ),
            SizedBox(height: 36),
            CustomInput(
              keyboardType: TextInputType.emailAddress,
              contentPadding: EdgeInsets.all(16),
              hintText: "E-mail",
            ),
            SizedBox(height: 20),
            CustomInput(
              maxLines: 1,
              obscure: true,
              contentPadding: EdgeInsets.all(16),
              hintText: "Пароль",
              suffix: Icon(
                Icons.remove_red_eye,
                size: 18,
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              radius: 50,
              width: 132,
              onTap: () {
                Navigator.pushNamed(context, "/main");
              },
              color: TaskColors.main,
              child: Text(
                "Войти",
                style: TaskTextStyles.medium14.copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
