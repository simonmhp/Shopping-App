import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color background;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 5,
            ),
            Text('\$$price'),
            const SizedBox(
              height: 5,
            ),
            // Image(image: AssetImage(image), height: 175),
            Center(
              child: Image.asset(
                image,
                height: 225,
              ),
            )
          ],
        ),
      ),
    );
  }
}
