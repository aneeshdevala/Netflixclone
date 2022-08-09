import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

import 'package:netflix/presentation/new_and_hot/widgets.dart/comming_soon_wid.dart';
import 'package:netflix/presentation/new_and_hot/widgets.dart/everyonewatcing.dart';

class ScreenNewhot extends StatelessWidget {
  const ScreenNewhot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              title: const Text(
                'New & Hot',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
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
                kwidth
              ],
              bottom: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: kwhitecolor,
                  isScrollable: true,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  tabs: const [
                    Tab(
                      text: "🍿 Coming Soon",
                    ),
                    Tab(
                      text: "👀 Everyone's watching",
                    ),
                  ]),
            ),
          ),
          body: const TabBarView(
            children: [
              ComingSoonList(
                key: Key('coming_soon'),
              ),
              EveryoneIsWatchingList(
                key: Key('every ones watching'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(const LoadDatainComingSoon());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotAndNewBloc>(context)
            .add(const LoadDatainComingSoon());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.hasError) {
            return const Center(
              child: Text('Error while loading '),
            );
          } else if (state.comingSoonList.isEmpty) {
            return const Center(
              child: Text('No data'),
            );
          } else {
            return ListView.builder(
                padding: const EdgeInsets.only(top: 10),
                itemCount: state.comingSoonList.length,
                itemBuilder: (BuildContext context, int index) {
                  final movie = state.comingSoonList[index];
                  if (movie.id == null) {
                    return const SizedBox();
                  }
                  print(movie.releaseDate);
                  final date = DateTime.parse(movie.releaseDate!);
                  final formatedDate = DateFormat.yMMMEd('en_US').format(date);

                  return Comingsoonwidget(
                    id: movie.id.toString(),
                    month: formatedDate
                        .split(' ')
                        .first
                        .substring(0, 3)
                        .toUpperCase(),
                    day: movie.releaseDate!.split('-')[1],
                    posterPath: '$imageAppendUrl${movie.posterPath}',
                    movieName: movie.originalTitle ?? 'No title',
                    description: movie.overview ?? 'No description',
                  );
                });
          }
        },
      ),
    );
  }
}

class EveryoneIsWatchingList extends StatelessWidget {
  const EveryoneIsWatchingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const LoadDataInEveryOneWatching());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotAndNewBloc>(context)
            .add(const LoadDataInEveryOneWatching());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.hasError) {
            return const Center(
              child: Text('Error while loading '),
            );
          } else if (state.everyOneWatchingList.isEmpty) {
            return const Center(
              child: Text('No data'),
            );
          } else {
            return ListView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: state.everyOneWatchingList.length,
                itemBuilder: (BuildContext context, int index) {
                  final movie = state.everyOneWatchingList[index];
                  if (movie.id == null) {
                    return const SizedBox();
                  }
                  print(movie.releaseDate);
                  // final date = DateTime.parse(movie.releaseDate!);
                  // final formatedDate = DateFormat.yMMMEd('en_US').format(date);

                  final tv = state.everyOneWatchingList[index];

                  return EveryOneWatchingWidget(
                      posterPath: '$imageAppendUrl${tv.posterPath}',
                      originaltitle: tv.originalName ?? 'Friends',
                      description: tv.overview ?? 'No Description');
                });
          }
        },
      ),
    );
  }
}
