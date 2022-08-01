import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widget/icon_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 700,
          decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage(kMainImage))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(
                  icon: Icons.add,
                  title: 'My List',
                ),
                _playbutton(),
                CustomButtonWidget(icon: Icons.info, title: 'info')
              ],
            ),
          ),
        )
      ],
    );
  }

  TextButton _playbutton() {
    return TextButton.icon(
      onPressed: () {},
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhitecolor)),
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: kblackbutton,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Text(
          'Play',
          style: TextStyle(fontSize: 20, color: kblackbutton),
        ),
      ),
    );
  }
}
