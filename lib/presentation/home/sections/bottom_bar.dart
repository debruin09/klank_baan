import 'package:klank_baan/presentation/home/widgets/bottom_bar_column.dart';
import 'package:klank_baan/presentation/home/widgets/info_text.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(30),
      color: Color(0xff091735),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (width > 700) ...[
                BottomBarColumn(
                  heading: 'ABOUT',
                  s1: 'Contact Us',
                  s2: 'About Us',
                  s3: '',
                ),
                BottomBarColumn(
                  heading: 'HELP',
                  s1: 'Payment',
                  s2: 'Cancellation',
                  s3: 'FAQ',
                )
              ],
              BottomBarColumn(
                heading: 'SOCIAL',
                s1: 'Twitter',
                s2: 'Facebook',
                s3: 'YouTube',
              ),
              if (width > 500) ...[
                Container(
                  color: Colors.blueGrey,
                  width: 2,
                  height: 150,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoText(
                      type: 'Email',
                      text: 'debruin@gmail.com',
                    ),
                    SizedBox(height: 5),
                    InfoText(
                      type: 'Address',
                      text: '55, Lytton Road, Observatory, Cape Town',
                    )
                  ],
                ),
              ],
            ],
          ),
          Divider(
            color: Colors.blueGrey,
          ),
          SizedBox(height: 20),
          Text(
            'Copyright © 2021 | DB_DING',
            style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
