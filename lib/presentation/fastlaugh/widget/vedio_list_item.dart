import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/downlods/models/downloads.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VedioListItemInherited extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const VedioListItemInherited(
      {Key? key, required this.widget, required this.movieData})
      : super(key: key, child: widget);

  @override
  bool updateShouldNotify(covariant VedioListItemInherited oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VedioListItemInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<VedioListItemInherited>();
  }
}

class VedioList extends StatelessWidget {
  final int index;
  const VedioList({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posterPath = VedioListItemInherited.of(context)?.movieData.posterPath;
    final videoUrl = dummyVideosUrl[index % dummyVideosUrl.length];
    return Stack(children: [
      FastLaughVedioPlayer(videoUrl: videoUrl, onStateChanged: (bool) {}),
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: posterPath == null
                            ? null
                            : NetworkImage("$imageAppendUrl$posterPath"),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: likedVideosNotifier,
                      builder: (BuildContext c, Set<int> newLikedlistIds,
                          Widget? _) {
                        final _index = index;
                        if (newLikedlistIds.contains(_index)) {
                          return GestureDetector(
                            onTap: () {
                              likedVideosNotifier.value.remove(_index);
                              likedVideosNotifier.notifyListeners();
                            },
                            child: const VedioActionWidgets(
                                icon: Icons.favorite_outline, title: 'Liked'),
                          );
                        }

                        return GestureDetector(
                          onTap: () {
                            likedVideosNotifier.value.add(_index);
                            likedVideosNotifier.notifyListeners();
                          },
                          child: const VedioActionWidgets(
                              icon: Icons.emoji_emotions, title: 'LOL'),
                        );
                      },
                    ),
                    const VedioActionWidgets(icon: Icons.add, title: 'My List'),
                    GestureDetector(
                        onTap: (() {
                          final movieName = VedioListItemInherited.of(context)
                              ?.movieData
                              .posterPath;
                          if (movieName != null) {
                            Share.share(movieName);
                          }
                        }),
                        child: const VedioActionWidgets(
                            icon: Icons.share, title: 'Share')),
                    const VedioActionWidgets(
                        icon: Icons.play_arrow, title: 'Play'),
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

class FastLaughVedioPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaughVedioPlayer(
      {Key? key, required this.videoUrl, required this.onStateChanged})
      : super(key: key);

  @override
  State<FastLaughVedioPlayer> createState() => _FastLaughVedioPlayerState();
}

class _FastLaughVedioPlayerState extends State<FastLaughVedioPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((_) {
      setState(() {
        _videoPlayerController.play();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const Center(
              child: CircularProgressIndicator(
              strokeWidth: 2,
            )),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
