import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isIcon;
  double? width;
  bool? isPrimary;
  final String text;

  ResponsiveButton(
      {super.key,
      this.width,
      this.isIcon = false,
      required this.text,
      this.isPrimary = false});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      height: 52,
      width: isIcon == true ? double.maxFinite : width,
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          border: isPrimary == true
              ? null
              : Border.all(width: 2, color: CupertinoColors.systemGrey2),
          borderRadius: BorderRadius.circular(10),
          color: isPrimary == true ? Colors.blue : Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isIcon == true ? SvgPicture.asset('assets/google.svg') : Container(),
          SizedBox(width: isIcon == true ? 20 : 0),
          Text(
            text,
            style: TextStyle(
                color: isPrimary == true ? Colors.white : Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    ));
  }
}
