import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              height: 200,
              width: 40,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: kradius10,
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        Positioned(
          left: 13,
          bottom: -10,
          child: BorderedText(
            strokeWidth: 5.0,
            strokeColor: kwhitecolor,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                  fontSize: 140,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
