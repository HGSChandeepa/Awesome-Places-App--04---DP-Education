import 'package:awesome_places_app_04/utils/colors.dart';
import 'package:flutter/material.dart';

class VehicalCard extends StatelessWidget {
  final String imageURL;
  final String vehical;
  const VehicalCard({
    super.key,
    required this.imageURL,
    required this.vehical,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageURL,
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ),
            Text(
              vehical,
              style: const TextStyle(
                fontSize: 15,
                color: mainColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
