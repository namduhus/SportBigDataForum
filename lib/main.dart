import 'package:flutter/material.dart';
import 'page/startpage.dart';
import 'page/login.dart';
import 'page/register.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // DEBUG 태그 비활성화
      title: 'Sport App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/start',
      routes: {
        '/start': (context) => StartPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      //   // '/Soccer': (context) => SoccerPage(),
      //   // '/Badminton' : (context) => BadmintonPage(),
      //   // '/Basketball' : (context) => BasketballPage(),
      //   // '/Tennis' : (context) => TennisPage(),
      //   // '/' : (context) => LogoPage(),
      //   // '/lecture' : (context) => LecturePage(),
      //
      },
    );
  }
}
