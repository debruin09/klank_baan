import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:klank_baan/presentation/home/sections/artist_of_the_month.dart';
import 'package:klank_baan/presentation/home/sections/bottom_bar.dart';
import 'package:klank_baan/presentation/home/sections/line_of_the_week_section.dart';
import 'package:klank_baan/presentation/home/sections/now_trending_section.dart';
import 'package:klank_baan/presentation/home/sections/top_albums_section.dart';
import 'package:klank_baan/application/audio/audio_player_notifier.dart';

import 'home_page.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ArtistOfTheMonth(),
          LineOfTheWeekSection(),
          TopAlbumsSection(),
          NowTrendingSection(),
          BottomBar(),
        ],
      ),
    );
  }
}
