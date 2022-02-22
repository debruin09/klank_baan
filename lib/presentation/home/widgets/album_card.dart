import 'package:flutter/material.dart';
import 'package:klank_baan/domain/artist/artist.dart';
import 'package:klank_baan/presentation/constants/constants.dart';

class TendingSongCard extends StatelessWidget {
  final Artist artist;

  const TendingSongCard({Key? key, required this.artist}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: Colors.white);
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(right: 15.0, top: 10.0),
      alignment: Alignment.bottomLeft,
      height: height * 0.4,
      width: 200.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
            image: NetworkImage(kTopSongsImage),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        // color: Color(0xff191919),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(artist.artistName, style: textStyle.copyWith(fontSize: 20.0)),
            Text(artist.albumName,
                style: textStyle.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 17.0)),
            SizedBox(height: 10.0),
            Text(artist.date, style: textStyle),
            SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}
