import 'package:flutter/material.dart';

class Ratings extends StatelessWidget {
  const Ratings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffCACACA).withOpacity(0.3),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.star,
            size: 40,
            color: Color(0xffFFE500),
          ),
          const Icon(
            Icons.star,
            size: 40,
            color: Color(0xffFFE500),
          ),
          const Icon(
            Icons.star,
            size: 40,
            color: Color(0xffFFE500),
          ),
          const Icon(
            Icons.star,
            size: 40,
            color: Color(0xffFFE500),
          ),
          Icon(
            Icons.star,
            size: 40,
            color: const Color(0xff3B3636).withOpacity(0.75),
          ),
        ],
      ),
    );
  }
}
