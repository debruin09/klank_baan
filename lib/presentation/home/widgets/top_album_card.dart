import 'package:flutter/material.dart';

import '../../../domain/artist/artist.dart';

class TopAlbumCard extends StatelessWidget {
  final Artist artist;
  final String image;

  const TopAlbumCard({Key? key, required this.artist, required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: Colors.black);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Card(
      color: Colors.white,
      elevation: 5.0,
      child: Container(
        height: height * 0.55,
        width: width < 700 ? width * 0.55 : width * 0.15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: height * 0.35,
              width: width < 700 ? width * 0.55 : width * 0.15,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(artist.artistName,
                      style: textStyle.copyWith(fontSize: 15.0)),
                  Text(artist.albumName,
                      style: textStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 12.0)),
                  SizedBox(height: 10.0),
                  Text(artist.date, style: textStyle),
                  SizedBox(height: 5.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
