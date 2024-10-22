import 'package:flutter/material.dart';
import 'package:food_delivery_app/welcome.dart';

import 'home/home_screen.dart';
import 'itemscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      debugShowCheckedModeBanner: false,
      initialRoute:  WelcomeScreen.routeName,
      routes: {
        WelcomeScreen.routeName:(context)=> WelcomeScreen(),
        HomeScreen.routeName:(context)=> HomeScreen(),
        ItemScreen.routeName:(context)=> ItemScreen(),
      },
    );
  }
}


