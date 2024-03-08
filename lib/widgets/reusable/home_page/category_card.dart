import 'package:awesome_places_app_04/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String caregory;
  final Color categoryColor;
  final double cardWidth;
  const CategoryCard({
    super.key,
    required this.caregory,
    required this.categoryColor,
    required this.cardWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: 100,
      decoration: BoxDecoration(
        color: categoryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          caregory,
          style: const TextStyle(
            fontSize: 18,
            color: blackColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
