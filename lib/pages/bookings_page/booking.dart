import 'package:awesome_places_app_04/pages/bookings_page/calculations.dart';
import 'package:awesome_places_app_04/widgets/shared/button.dart';
import 'package:flutter/material.dart';

import 'package:awesome_places_app_04/utils/colors.dart';
import 'package:awesome_places_app_04/widgets/reusable/booking_page/select_vehical_card.dart';
import 'package:awesome_places_app_04/widgets/reusable/booking_page/user_form.dart';
import 'package:awesome_places_app_04/widgets/shared/ratings.dart';

class BookingsPage extends StatelessWidget {
  const BookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lets Book A Tour!",
          style: TextStyle(
            fontSize: 22,
            color: mainColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const Text(
                "Select a vehical",
                style: TextStyle(
                  fontSize: 20,
                  color: mainColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VehicalCard(
                    imageURL:
                        "https://media.zigcdn.com/media/model/2021/May/v8_360x240.jpg",
                    vehical: "Car",
                  ),
                  VehicalCard(
                    imageURL:
                        "https://media.istockphoto.com/id/1318466766/vector/school-bus-vector-gifts-for-school-bus-drivers-concept-of-back-to-school-isolated-on.jpg?s=612x612&w=0&k=20&c=RXzSnvb5qty92hBuFf9vFJdGdjjbWA1mf3ZyLIwkcxI=",
                    vehical: "Car",
                  ),
                  VehicalCard(
                    imageURL:
                        "https://supersavings.lk/wp-content/uploads/2022/07/ngc-bike-11-112.png",
                    vehical: "Car",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Selected Place",
                style: TextStyle(
                  fontSize: 20,
                  color: mainColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/Cultural.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selected Place",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Ratings(),
                      ],
                    ),
                  )
                ],
              ),
              const UserForm(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Selected Place",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: mainColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Calculations(),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                style: TextStyle(
                  fontSize: 16,
                  color: mainTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomButton(text: "Submit", bgColor: starColor),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
