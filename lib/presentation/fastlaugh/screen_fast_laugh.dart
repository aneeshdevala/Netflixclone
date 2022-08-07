import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/presentation/fastlaugh/widget/vedio_list_item.dart';

import '../../application/fast_laugh/fast_laugh_bloc.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(child: BlocBuilder<FastLaughBloc, FastLaughState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state.isError) {
            return Center(child: Text('Error while fetching data'));
          } else if (state.videosList.isEmpty) {
            return Center(child: Text('Video not found'));
          } else {
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(state.videosList.length, (index) {
                return VedioListItemInherited(
                    widget: VedioList(key: Key(index.toString()), index: index),
                    movieData: state.videosList[index]);
              }),
            );
          }
        },
      )),
    );
  }
}
