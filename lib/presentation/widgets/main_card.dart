import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class MainCard extends StatelessWidget {
  final String imageUrl;

  const MainCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 140,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kradius10,
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}
