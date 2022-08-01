import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/constants.dart';

import 'package:netflix/presentation/home/numbertitle.dart';

import 'package:netflix/presentation/widgets/main_title_card.dart';

import 'widget/backgroundcard.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: ((notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            }),
            child: Stack(
              children: [
                ListView(
                  children: const [
                    BackgroundCard(),
                    MainTitleCard(
                      title: 'Released in the past year',
                    ),
                    khight,
                    MainTitleCard(
                      title: 'Trending Now',
                    ),
                    khight,
                    NumberTitleCard(),
                    khight,
                    MainTitleCard(
                      title: 'Tense Dreamas ',
                    ),
                    khight,
                    MainTitleCard(
                      title: 'South indian Cinema',
                    ),
                    khight,
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 120,
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  "https://cdn.vox-cdn.com/thumbor/Yq1Vd39jCBGpTUKHUhEx5FfxvmM=/39x0:3111x2048/1200x800/filters:focal(39x0:3111x2048)/cdn.vox-cdn.com/uploads/chorus_image/image/49901753/netflixlogo.0.0.png",
                                  width: 100,
                                  height: 100,
                                ),
                                Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                ),
                                kwidth,
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.blue,
                                ),
                                kwidth,
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'TV Shows',
                                  style: khomeTitleText,
                                ),
                                Text(
                                  'Movies',
                                  style: khomeTitleText,
                                ),
                                Text(
                                  'Categories',
                                  style: khomeTitleText,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : khight
              ],
            ),
          );
        },
      ),
    );
  }
}
