import 'package:flutter/material.dart';
import '../ui/circle_image.dart';
import '../ui/responsive_button.dart';

class BoxModal extends StatelessWidget {
  const BoxModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 200),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.grey[200]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Your Spend',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                CircleImage(
                  imageRadius: 22,
                  imageProvider: AssetImage('assets/ma.jpg'),
                  noRounded: true,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  '\$  ' '134.12',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                )
              ],
            ),
            ResponsiveButton(
              text: 'Add',
              isPrimary: true,
            )
          ],
        ),
      ),
    );
  }
}
