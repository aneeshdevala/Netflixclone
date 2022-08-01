import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 140,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kradius10,
        image: const DecorationImage(
            image: NetworkImage(
                "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/x1q3FkqFHBkMeKnHiS6GYgdLvUs.jpg"),
            fit: BoxFit.cover),
      ),
    );
  }
}
