import 'package:flutter/material.dart';
import 'screens/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Inter'), home: const MainPage());
  }
}
