import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VedioWidget extends StatelessWidget {
  final String url;
  const VedioWidget({
    required this.url,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.network(url, fit: BoxFit.cover, loadingBuilder:
                (BuildContext _, Widget child, ImageChunkEvent? progress) {
              if (progress == null) {
                return child;
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                );
              }
            }, errorBuilder: (BuildContext_, Object a, StackTrace? trace) {
              return const Center(
                child: Icon(
                  Icons.wifi,
                  color: Colors.white,
                ),
              );
            })),
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
