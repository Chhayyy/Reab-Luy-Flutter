import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({super.key, required this.price});
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue[100]),
      child: SizedBox(
          child: Text(
        price,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      )),
    );
  }
}
