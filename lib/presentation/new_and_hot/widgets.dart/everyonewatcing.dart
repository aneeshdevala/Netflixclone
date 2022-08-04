import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widget/icon_button.dart';
import 'package:netflix/presentation/new_and_hot/widgets.dart/vedio_widget.dart';

class EveryOne_watchingWidget extends StatelessWidget {
  const EveryOne_watchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        khight,
        const Text(
          'Friends',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        khight,
        Text(
            'This hit sitcom follows the lives of six friends living in Manhattan something as they navigates the pitfalls of work life and love in 1990s New York.',
            style: TextStyle(color: Colors.grey[300], fontSize: 14)),
        const SizedBox(
          height: 50,
        ),
        const VedioWidget(),
        khight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.share,
              title: 'Share ',
              iconSize: 25,
              textSize: 16,
            ),
            kwidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: 'add',
              iconSize: 30,
              textSize: 16,
            ),
            kwidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: 'play',
              iconSize: 30,
              textSize: 16,
            ),
            kwidth
          ],
        )
      ],
    );
  }
}
