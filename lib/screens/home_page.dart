import 'package:flutter/material.dart';
import 'package:reab_luy/widgets/modals/card.dart';
import '../widgets/modals/box.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CardProducts(date: '02 02 2023', title: 'Starbuck Coffee'),
    );
  }
}
