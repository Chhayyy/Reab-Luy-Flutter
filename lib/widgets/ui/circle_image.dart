import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage(
      {super.key,
      required this.imageRadius,
      this.imageProvider,
      this.noRounded = false});
  final double imageRadius;
  final ImageProvider? imageProvider;
  final bool? noRounded;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: imageRadius,
      child: CircleAvatar(
        radius: noRounded == true ? imageRadius : imageRadius - 2,
        backgroundImage: imageProvider,
      ),
    );
  }
}
