import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widget/icon_button.dart';
import 'package:netflix/presentation/new_and_hot/widgets.dart/comming_soon_wid.dart';
import 'package:netflix/presentation/new_and_hot/widgets.dart/everyonewatcing.dart';
import 'package:netflix/presentation/new_and_hot/widgets.dart/vedio_widget.dart';
import 'package:netflix/presentation/widgets/appbar_widget.dart';

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
                  tabs: [
                    Tab(
                      text: "🍿 Coming Soon",
                    ),
                    Tab(
                      text: "👀 Everyone's watching",
                    ),
                  ]),
            ),
          ),
          body: TabBarView(
            children: [
              _buildComigSoon(),
              _buildEveryonesWatching(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildComigSoon() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) => const comingsoonwidget());
  }

  // Widget _buildEveryonesWatching() {
  //   return const SizedBox();
  // }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const EveryOne_watchingWidget();
      },
    );
  }
}
