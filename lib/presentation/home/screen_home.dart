import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/homepage/homepage_bloc.dart';
import 'package:netflix/core/constants.dart';

import 'package:netflix/presentation/home/numbertitle.dart';

import 'package:netflix/presentation/widgets/main_title_card.dart';

import 'widget/backgroundcard.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomepageBloc>(context).add(GetHomeScreenData());
    });
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
                BlocBuilder<HomepageBloc, HomepageState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      );
                    } else if (state.hasError) {
                      return const Center(
                        child: Text(
                          'Error while loading',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }
                    // release Past year
                    final _releasedPastyear = state.pastYearMovieList.map((m) {
                      return "$imageAppendUrl${m.posterPath}";
                    }).toList();
                    _releasedPastyear.shuffle();

                    //Trending Now
                    final _trending = state.treandingNowList.map((m) {
                      return "$imageAppendUrl${m.posterPath}";
                    }).toList();
                    //Tens dramas
                    final _tensDramas = state.tensDramasMovieList.map((m) {
                      return "$imageAppendUrl${m.posterPath}";
                    }).toList();
                    _tensDramas.shuffle();

                    //South Indian movies
                    final _southindian = state.southIndianMovieList.map((m) {
                      return "$imageAppendUrl${m.posterPath}";
                    }).toList();

                    //Top ten movies
                    final _topten = state.trendingtvList.map((m) {
                      return "$imageAppendUrl${m.posterPath}";
                    }).toList();

                    return ListView(
                      children: [
                        BackgroundCard(),
                        MainTitleCard(
                          title: 'Released in the past year',
                          posterList: _releasedPastyear.sublist(0, 10),
                        ),
                        khight,
                        MainTitleCard(
                          title: 'Trending Now',
                          posterList: _trending.sublist(0, 10),
                        ),
                        khight,
                        NumberTitleCard(
                          postersList: _topten.sublist(0, 10),
                        ),
                        khight,
                        MainTitleCard(
                          title: 'Tense Dreamas ',
                          posterList: _tensDramas.sublist(0, 10),
                        ),
                        khight,
                        MainTitleCard(
                          title: 'South indian Cinema',
                          posterList: _southindian.sublist(0, 10),
                        ),
                        khight,
                      ],
                    );
                  },
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
