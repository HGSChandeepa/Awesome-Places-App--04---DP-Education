import 'package:awesome_places_app_04/pages/bookings_page/booking.dart';
import 'package:awesome_places_app_04/pages/cultural.dart';
import 'package:awesome_places_app_04/pages/landmarks.dart';
import 'package:awesome_places_app_04/pages/natural_wounders.dart';
import 'package:awesome_places_app_04/pages/nightlife.dart';
import 'package:awesome_places_app_04/utils/colors.dart';
import 'package:awesome_places_app_04/widgets/reusable/home_page/category_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Awesome",
                          style: TextStyle(
                            fontSize: 16,
                            color: mainTextColor,
                          ),
                        ),
                        const Text(
                          "Places",
                          style: TextStyle(
                            fontSize: 40,
                            color: mainColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff9E00FF),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                  style: TextStyle(
                    fontSize: 16,
                    color: mainTextColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/main.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Select a Place from the categories",
                  style: TextStyle(
                    fontSize: 20,
                    color: mainColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: const CategoryCard(
                        caregory: "Natural Wounders",
                        categoryColor: firstCategoryColor,
                        cardWidth: 190,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NaturalWoundersPage(),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const CategoryCard(
                        caregory: "Nightlife",
                        categoryColor: firstCategoryColor,
                        cardWidth: 190,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NightLifePage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: const CategoryCard(
                        caregory: "Landmarks",
                        categoryColor: secondCategoryColor,
                        cardWidth: 190,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LandMarkspage(),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const CategoryCard(
                        caregory: "Cultural",
                        categoryColor: secondCategoryColor,
                        cardWidth: 190,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Culturalpage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  child: const CategoryCard(
                    caregory: "Book For A Ride Today!",
                    categoryColor: thirdCategoryColor,
                    cardWidth: 400,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookingsPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
