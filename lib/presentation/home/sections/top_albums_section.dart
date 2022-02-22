import 'package:flutter/material.dart';
import 'package:klank_baan/domain/artist/artist.dart';
import 'package:klank_baan/presentation/home/widgets/top_album_card.dart';

import '../../constants/constants.dart';

class TopAlbumsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(20),
      width: width,
      // height: height * 0.3,
      color: Color(0xffefefef),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Top Albums",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Wrap(
            spacing: 10.0,
            direction: width < 700 ? Axis.vertical : Axis.horizontal,
            runAlignment: WrapAlignment.spaceEvenly,
            children: listOfAlbums,
          ),
        ],
      ),
    );
  }
}

final listOfAlbums = [
  TopAlbumCard(
    image: ka1,
    artist: Artist(
      artistName: "Drake",
      albumName: "Scorpion",
      date: "10 August 2018",
    ),
  ),
  TopAlbumCard(
    image: ka2,
    artist: Artist(
      artistName: "NF",
      albumName: "CLOUDS",
      date: "2 April 2021",
    ),
  ),
  TopAlbumCard(
    image: ka3,
    artist: Artist(
      artistName: "Phora",
      albumName: "Angels With Borken Wings",
      date: "22 August 2015",
    ),
  ),
  TopAlbumCard(
    image: ka4,
    artist: Artist(
      artistName: "Juice Wrld",
      albumName: "Legends Never Die",
      date: "13 October 2021",
    ),
  ),
  TopAlbumCard(
    image: ka5,
    artist: Artist(
      artistName: "Dax",
      albumName: "Dax album",
      date: "22 June 2020",
    ),
  ),
];
