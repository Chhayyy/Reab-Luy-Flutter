import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key, required this.imageProvider});
  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      width: 88,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image(image: imageProvider, fit: BoxFit.cover),
      ),
    );
  }
}
