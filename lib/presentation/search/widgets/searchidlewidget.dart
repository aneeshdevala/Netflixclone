import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

import '../../../core/colors/colors.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vNVFt6dtcqnI7hqa6LFBUibuFiw.jpg';

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
          child: ListView.separated(
              shrinkWrap: true,
              itemCount: 10,
              separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
              itemBuilder: (context, index) => const TopSearchitems()),
        ),
      ],
    );
  }
}

class TopSearchitems extends StatelessWidget {
  const TopSearchitems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
            width: screenwidth * 0.35,
            height: 65,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl)),
            )),
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )),
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
