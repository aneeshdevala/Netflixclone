import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/downloads_bloc/downloads_bloc.dart';
import 'package:netflix/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix/application/homepage/homepage_bloc.dart';
import 'package:netflix/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/domain/core/dip_inje/injectable.dart';
import 'package:netflix/presentation/startpage/widgets/screen_main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider(create: (ctx) => getIt<FastLaughBloc>()),
        BlocProvider(create: (ctx) => getIt<HotAndNewBloc>()),
        BlocProvider(create: (ctx) => getIt<HomepageBloc>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
            primarySwatch: Colors.blue,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            scaffoldBackgroundColor: backgroundColor,
            backgroundColor: Colors.black,
            textTheme: TextTheme(
                bodyText1: TextStyle(color: Colors.white),
                bodyText2: TextStyle(color: Colors.white))),
        home: ScreenMainPage(),
      ),
    );
  }
}
