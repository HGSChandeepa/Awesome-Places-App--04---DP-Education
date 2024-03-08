import 'package:awesome_places_app_04/utils/colors.dart';
import 'package:flutter/material.dart';

class LandMarkCard extends StatelessWidget {
  final String title;
  final String imageURL;
  final String description;

  const LandMarkCard({
    super.key,
    required this.title,
    required this.imageURL,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  color: subLandmarkColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  imageURL,
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 15,
                  color: blackColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
