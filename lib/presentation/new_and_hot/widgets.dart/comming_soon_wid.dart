import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widget/icon_button.dart';
import 'package:netflix/presentation/new_and_hot/widgets.dart/vedio_widget.dart';

class Comingsoonwidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String description;

  const Comingsoonwidget({
    Key? key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                month,
                style: TextStyle(fontSize: 16, color: Colors.grey[300]),
              ),
              Text(
                day,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VedioWidget(
                url: posterPath,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      movieName,
                      maxLines: 1,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 35,
                        //letterSpacing: -5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const CustomButtonWidget(
                    icon: Icons.add_alert,
                    title: 'Remind me',
                    iconSize: 20,
                    textSize: 14,
                  ),
                  kwidth20,
                  const CustomButtonWidget(
                    icon: Icons.info,
                    title: 'info',
                    iconSize: 20,
                    textSize: 14,
                  ),
                  kwidth
                ],
              ),
              khight,
              Text('Coming On $day, $month'),
              khight,
              Text(
                movieName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              khight,
              Text(description,
                  maxLines: 4,
                  style: TextStyle(color: Colors.grey[300], fontSize: 14)),
            ],
          ),
        ),
      ],
    );
  }
}
