import 'package:flutter/cupertino.dart';

class AppButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  IconData? icon;
  ImageIcon? imgIcon;
  double size;
  bool? isIcon;
  AppButton(
      {super.key,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.text,
      required this.size,
      this.icon,
      this.isIcon = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: borderColor, width: 1.0)),
      child: Center(
          child: isIcon == false
              ? Text(
                  text,
                  style: TextStyle(color: textColor),
                )
              : Icon(
                  icon,
                  color: textColor,
                )),
    );
  }
}
