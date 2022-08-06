import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

import '../../../core/colors/colors.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitle(title: 'Top Searches'),
        khight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Something went wrong'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('No results found'),
                );
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemCount: state.idleList.length,
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  itemBuilder: (context, index) {
                    final movie = state.idleList[index];
                    return TopSearchitems(
                        title: movie.title ?? 'No title Provided',
                        imageUrl: '$imageAppendUrl${movie.posterPath}');
                  });
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchitems extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchitems({Key? key, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
            width: screenwidth * 0.35,
            height: 65,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl)),
            )),
        const SizedBox(width: 6),
        Expanded(
            flex: 3,
            child: Text(title,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  //   overflow: TextOverflow.ellipsis,
                ))),
        const Spacer(),
        const Icon(
          CupertinoIcons.play_circle,
          size: 40,
          color: kwhitecolor,
        ),
      ],
    );
  }
}
