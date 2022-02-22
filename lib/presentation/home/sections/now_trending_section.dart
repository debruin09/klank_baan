import 'package:flutter/material.dart';
import 'package:klank_baan/domain/artist/artist.dart';
// import 'package:klank_baan/presentation/constants/constants.dart';
import 'package:klank_baan/presentation/home/widgets/album_card.dart';

class NowTrendingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(20.0),
      alignment: Alignment.center,
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "New Trending",
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 300.0,
            width: width,
            alignment: Alignment.center,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: generateSonglist(),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> generateSonglist() {
  return List.generate(
      5,
      (index) => TendingSongCard(
            artist: Artist(
              artistName: "GHOST",
              albumName: "Life After Death",
              date: "37 December 2021",
            ),
          ));
}
