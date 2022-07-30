import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VedioList extends StatelessWidget {
  final int index;
  const VedioList({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.accents[index % Colors.accents.length],
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //left side volumbutton
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.5),
                radius: 30,
                child: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(CupertinoIcons.volume_off),
                ),
              ),

              //right side buttons
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vNVFt6dtcqnI7hqa6LFBUibuFiw.jpg",
                        ),
                      ),
                    ),
                    VedioActionWidgets(
                        icon: Icons.emoji_emotions, title: 'LOL'),
                    VedioActionWidgets(icon: Icons.add, title: 'My List'),
                    VedioActionWidgets(icon: Icons.share, title: 'Share'),
                    VedioActionWidgets(icon: Icons.play_arrow, title: 'Play'),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}

class VedioActionWidgets extends StatelessWidget {
  const VedioActionWidgets({Key? key, required this.icon, required this.title})
      : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
