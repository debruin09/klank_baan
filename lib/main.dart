import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:klank_baan/presentation/home/home_page.dart';

import 'presentation/constants/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klank Baan',
      theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: Colors.black,
        ),
      )),
      debugShowCheckedModeBanner: false,
      home: ProviderScope(child: HomePage()),
    );
  }
}
