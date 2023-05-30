import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key, required this.icon, this.color});
  final Widget icon;
  final Gradient? color;

  @override
  Widget build(BuildContext context) {
    var sizeOfMyScreen = MediaQuery.of(context).size;
    double heightOfMyScreen = sizeOfMyScreen.height;
    double widthOfMyScreen = sizeOfMyScreen.width;
    return Container(
      height: heightOfMyScreen * 0.08,
      width: widthOfMyScreen * 0.135,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(3, 4),
                blurRadius: 3,
                color: Colors.brown.shade500),
          ],
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.brown, Colors.deepPurpleAccent]),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: icon,
      ),
    );
  }
}
