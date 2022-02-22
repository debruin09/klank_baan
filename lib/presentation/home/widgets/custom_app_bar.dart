import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:klank_baan/presentation/home/widgets/search_bar.dart';

class CustomAppBar extends PreferredSize {
  final Size size;
  final Widget child;

  CustomAppBar(this.child, this.size)
      : super(child: child, preferredSize: size);
}

class AppBarContainer extends StatelessWidget {
  final Size size;

  const AppBarContainer({Key? key, required this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Klank Baan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
                width: 30.0,
                child: Image.asset("images/songs/logo.jpg"),
              )
            ],
          ),
        ),
        size.width > 600
            ? Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SearchBar(),
                    SizedBox(width: size.width / 20),
                    AppBarItem(
                      text: "Home",
                      isVisible: true,
                    ),
                    SizedBox(width: size.width / 20),
                    AppBarItem(
                      text: "News",
                      isVisible: true,
                    ),
                    SizedBox(width: size.width / 20),
                    AppBarItem(
                      text: "Sign-up",
                      isVisible: true,
                    ),
                  ],
                ),
              )
            : Icon(Icons.menu),
      ]),
    );
  }
}

class AppBarItem extends HookWidget {
  final String text;
  final bool isVisible;

  const AppBarItem({Key? key, required this.text, required this.isVisible})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) => context.read(onHoverProvider).onHover(value),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text),
          SizedBox(height: 5),
          // For showing an underline on hover
          // Visibility(
          //   maintainAnimation: true,
          //   maintainState: true,
          //   maintainSize: true,
          //   visible: isVisible,
          //   child: Container(
          //     height: 2,
          //     width: 20,
          //     color: Colors.black,
          //   ),
          // )
        ],
      ),
    );
  }
}

final onHoverProvider = StateNotifierProvider((ref) => OnHoverNotifier());

class OnHoverNotifier extends StateNotifier<bool> {
  OnHoverNotifier() : super(false);

  void onHover(bool value) {
    print("Chnaged");
    state = value;
  }
}
