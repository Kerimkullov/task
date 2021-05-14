import 'package:flutter/material.dart';
import 'package:task/ui/screens/auth_screen.dart';
import 'package:task/ui/screens/main_screen.dart';
import 'package:task/ui/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffE5E5E5),
          primarySwatch: Colors.grey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AuthPage(),
        routes: <String, WidgetBuilder>{
          "/auth": (BuildContext context) => AuthPage(),
          "/main": (BuildContext context) => MainScreen(),
          "/profile": (BuildContext context) => ProfileScreen(),
        });
  }
}
