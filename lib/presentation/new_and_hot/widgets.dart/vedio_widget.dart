import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class VedioWidget extends StatelessWidget {
  const VedioWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.network(
              tempImage2,
              fit: BoxFit.cover,
            )),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            radius: 22,
            child: IconButton(
              onPressed: (() {}),
              icon: const Icon(CupertinoIcons.volume_off),
            ),
          ),
        ),
      ],
    );
  }
}
