import 'package:flutter/material.dart';

import 'widget_holder_clipper.dart';

class WidgetHolder extends StatelessWidget {
  const WidgetHolder(
      {super.key, required this.imagePath, required this.widget});
  final String imagePath;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    var sizeOfMyScreen = MediaQuery.of(context).size;
    double heightOfMyScreen = sizeOfMyScreen.height;
    double widthOfMyScreen = sizeOfMyScreen.width;

    return ClipPath(
      clipBehavior: Clip.antiAlias,
      clipper: WidgetHolderClipper(),
      child: Container(
        height: heightOfMyScreen * 0.42,
        width: widthOfMyScreen * 0.4,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.brown, Colors.deepPurpleAccent]),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(Icons.favorite_outline, color: Colors.white),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(imagePath),
          ),
          widget
        ]),
      ),
    );
  }
}
