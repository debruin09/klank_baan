import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:klank_baan/presentation/constants/constants.dart';
import 'package:klank_baan/presentation/home/home_page_body.dart';
import 'package:klank_baan/presentation/home/widgets/custom_app_bar.dart';
import 'package:klank_baan/application/audio/audio_player_notifier.dart';

import '../../domain/audio/audio_player.dart';
import 'sections/artist_of_the_month.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isPlaying = useProvider(isPlayingProvider).state;
    // final x = getUrl();
    // print("This was x: $x");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          AppBarContainer(
            size: Size(width, height),
          ),
          Size(width, 90)),
      body: HomePageBody(),
      floatingActionButton: isPlaying ? BottomMusicPlayer() : Container(),
    );
  }
}

class BottomMusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Card(
        elevation: 9.0,
        margin: EdgeInsets.symmetric(horizontal: 50.0),
        child: Container(
            height: 60.0,
            width: width,
            color: kThemeColor,
            child: Consumer(builder: (context, watch, child) {
              final audioPlayerState = watch(audioPlayerNotifierProvider);
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.skip_previous),
                    onPressed: () {},
                    color: Colors.orange,
                  ),
                  audioPlayerState == AudioPlayerState.PLAYING
                      ? IconButton(
                          icon: Icon(Icons.pause),
                          onPressed: () {
                            context
                                .read(audioPlayerNotifierProvider.notifier)
                                .pause();
                          },
                          color: Colors.orange,
                        )
                      : IconButton(
                          icon: Icon(Icons.play_arrow),
                          onPressed: () {
                            context
                                .read(audioPlayerNotifierProvider.notifier)
                                .play();
                          },
                          color: Colors.orange,
                        ),
                  IconButton(
                    icon: Icon(Icons.skip_next),
                    onPressed: () {},
                    color: Colors.orange,
                  ),
                ],
              );
            })),
      ),
    );
  }
}
