import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reab_luy/widgets/ui/card_image.dart';
import 'package:reab_luy/widgets/ui/price.dart';
import '../ui/responsive_button.dart';

class CardProducts extends StatefulWidget {
  const CardProducts({super.key, required this.title, required this.date});
  final String title;
  final String date;

  @override
  State<CardProducts> createState() => _CardProductsState();
}

class _CardProductsState extends State<CardProducts> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(12),
        constraints: const BoxConstraints.expand(width: 350, height: 128),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.grey[200]),
        child: Row(
          children: [
            const CardImage(imageProvider: AssetImage('assets/ma.jpg')),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 22,
                    ),
                    const Icon(
                      CupertinoIcons.pencil_outline,
                      color: Colors.blue,
                      size: 24,
                    ),
                    IconButton(
                      icon: const Icon(
                        CupertinoIcons.delete,
                        size: 24,
                      ),
                      color: Colors.red,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: const Text('Delete'),
                                  content: const Text(
                                      'Are you sure you want to delete this ?'),
                                  actions: [
                                    Row(
                                      children: [
                                        ResponsiveButton(
                                          text: 'Cancel',
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        ResponsiveButton(
                                          text: 'Delete',
                                          isPrimary: true,
                                        )
                                      ],
                                    )
                                  ],
                                ));
                      },
                    )
                  ],
                ),
                Text(widget.date, style: const TextStyle(fontSize: 15)),
                const SizedBox(
                  height: 2,
                ),
                const Price(
                  price: '\$ 10',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
