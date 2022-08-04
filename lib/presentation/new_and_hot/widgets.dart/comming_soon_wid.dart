import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widget/icon_button.dart';
import 'package:netflix/presentation/new_and_hot/widgets.dart/vedio_widget.dart';

class comingsoonwidget extends StatelessWidget {
  const comingsoonwidget({
    Key? key,
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
                'FEB',
                style: TextStyle(fontSize: 16, color: Colors.grey[300]),
              ),
              Text(
                "11",
                style: TextStyle(
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
              VedioWidget(),
              Row(
                children: [
                  const Text(
                    'TALL GIRL 2',
                    style: TextStyle(
                      fontSize: 35,
                      letterSpacing: -5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.add_alert,
                        title: 'Remind me',
                        iconSize: 20,
                        textSize: 14,
                      ),
                      kwidth20,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: 'info',
                        iconSize: 20,
                        textSize: 14,
                      ),
                      kwidth
                    ],
                  ),
                ],
              ),
              khight,
              const Text('Coming On Friday'),
              khight,
              const Text(
                'Tall Girl 2',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              khight,
              Text(
                  'Landing the lead in the school musical is a dream come tru for jodi,until the pressure sends her confidence - and reletionship - into a tailspain',
                  style: TextStyle(color: Colors.grey[300], fontSize: 14)),
            ],
          ),
        ),
      ],
    );
  }
}
