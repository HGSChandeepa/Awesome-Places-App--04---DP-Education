import 'package:awesome_places_app_04/utils/colors.dart';
import 'package:awesome_places_app_04/widgets/reusable/land_marks_page/land_mark_card.dart';
import 'package:flutter/material.dart';

class LandMarkspage extends StatelessWidget {
  const LandMarkspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Landmarks",
          style: TextStyle(
            fontSize: 22,
            color: mainLandmarkColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            LandMarkCard(
              title: "Landmarks Place-1",
              description:
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              imageURL:
                  "https://www.usnews.com/object/image/00000169-5e06-df95-a57d-7ec6e0e70000/16-leaning-tower-of-pisa-getty.jpg?update-time=1706735236094&size=responsive640",
            ),
            SizedBox(
              height: 20,
            ),
            LandMarkCard(
              title: "Landmarks Place-2",
              description:
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              imageURL:
                  "https://media.timeout.com/images/105625808/750/422/image.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
