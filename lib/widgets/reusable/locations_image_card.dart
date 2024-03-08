import 'package:awesome_places_app_04/utils/colors.dart';
import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final Color titleColor;
  final String title;
  final String description;
  final String imageLocation;
  final bool isCornersRound;

  const LocationCard({
    super.key,
    required this.titleColor,
    required this.title,
    required this.description,
    required this.imageLocation,
    required this.isCornersRound,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: titleColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          isCornersRound
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imageLocation,
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                )
              : Image.asset(
                  imageLocation,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
          const SizedBox(
            height: 15,
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 15,
              color: blackColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
