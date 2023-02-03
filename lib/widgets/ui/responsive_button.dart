import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  final String text;

  ResponsiveButton(
      {super.key, this.width, this.isResponsive = false, required this.text});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.blue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isResponsive == true
              ? Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                )
              : Container(),
        ],
      ),
    ));
  }
}
