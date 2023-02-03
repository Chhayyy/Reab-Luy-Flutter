import 'package:flutter/material.dart';
import '../widgets/ui/responsive_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ResponsiveButton(
        isIcon: true,
        width: 50,
        text: 'Continue with Google',
      )),
    );
  }
}
