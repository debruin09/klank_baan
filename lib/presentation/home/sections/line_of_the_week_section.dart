import 'package:flutter/material.dart';

class LineOfTheWeekSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Line Of The Week",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SelectableText(
                  '"Wys my jy is destined vir success, Eathan" ~ EDS',
                  style: TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
