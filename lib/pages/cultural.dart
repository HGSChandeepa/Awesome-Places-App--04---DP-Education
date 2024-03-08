import 'package:awesome_places_app_04/utils/colors.dart';
import 'package:awesome_places_app_04/widgets/shared/button.dart';
import 'package:awesome_places_app_04/widgets/shared/input.dart';
import 'package:awesome_places_app_04/widgets/shared/ratings.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

class Culturalpage extends StatelessWidget {
  const Culturalpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cultural",
          style: TextStyle(
            fontSize: 22,
            color: mainCultureColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                  fontSize: 15,
                  color: blackColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/Cultural.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                  fontSize: 15,
                  color: blackColor,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Rate This Place",
                style: TextStyle(
                  fontSize: 20,
                  color: mainNightlifeColor,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Ratings(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                  fontSize: 15,
                  color: blackColor,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Rate This Place",
                style: TextStyle(
                  fontSize: 20,
                  color: mainNightlifeColor,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const EmptyInputField(),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    text: "Submit",
                    bgColor: Colors.yellow,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
