import 'package:flutter/widgets.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/title.dart';
import 'package:netflix/presentation/widgets/main_card.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vNVFt6dtcqnI7hqa6LFBUibuFiw.jpg';

class SearchresultWidget extends StatelessWidget {
  const SearchresultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: 'Movies & TV '),
        khight,
        Expanded(
          child: GridView.count(
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.5,
              children: List.generate(20, (index) {
                return const MainCard();
              })),
        )
      ],
    );
  }
}
