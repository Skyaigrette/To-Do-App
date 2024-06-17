import 'package:flutter/material.dart';
import 'package:to_do_app_self_try/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(247, 247, 247, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(242, 231, 213,1)
        )
      ),
      title: "My ToDo App",
      home: const HomePage(),
    );
  }
}