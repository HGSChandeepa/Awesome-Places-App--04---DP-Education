import 'package:awesome_places_app_04/utils/colors.dart';
import 'package:awesome_places_app_04/widgets/reusable/locations_image_card.dart';
import 'package:flutter/material.dart';

class NightLifePage extends StatelessWidget {
  const NightLifePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Night Life",
          style: TextStyle(
            fontSize: 22,
            color: mainNightlifeColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            LocationCard(
              title: "Nature Wonders Place-1",
              description:
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              imageLocation: "assets/night2.jpg",
              isCornersRound: true,
              titleColor: mainNightlifeColor,
            ),
            SizedBox(
              height: 15,
            ),
            LocationCard(
              title: "Nature Wonders Place-2",
              description:
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              imageLocation: "assets/night1.jpg",
              isCornersRound: true,
              titleColor: mainNightlifeColor,
            ),
          ],
        ),
      ),
    );
  }
}
