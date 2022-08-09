import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widget/icon_button.dart';
import 'package:netflix/presentation/new_and_hot/widgets.dart/vedio_widget.dart';

class EveryOneWatchingWidget extends StatelessWidget {
  final String posterPath;
  final String originaltitle;
  final String description;

  const EveryOneWatchingWidget(
      {super.key,
      required this.posterPath,
      required this.originaltitle,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        khight,
        Text(
          originaltitle,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        khight,
        Text(description,
            maxLines: 4,
            style: TextStyle(
                color: Colors.grey[300],
                fontSize: 14,
                overflow: TextOverflow.ellipsis)),
        const SizedBox(
          height: 50,
        ),
        VedioWidget(
          url: posterPath,
        ),
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
