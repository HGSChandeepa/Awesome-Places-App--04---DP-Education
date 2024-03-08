import 'package:awesome_places_app_04/utils/colors.dart';
import 'package:awesome_places_app_04/widgets/shared/button.dart';
import 'package:flutter/material.dart';

class Calculations extends StatelessWidget {
  const Calculations({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: mainColor,
              ),
              child: const Center(
                child: Text(
                  "3",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add or Remove team members",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomButton(text: "Add s+", bgColor: addButtonColor),
                    SizedBox(
                      width: 20,
                    ),
                    CustomButton(text: "Remove -", bgColor: removeButtonColor),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
