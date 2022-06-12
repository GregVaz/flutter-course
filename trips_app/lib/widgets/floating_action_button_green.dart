import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  IconData iconData;
  VoidCallback onPressed;

  FloatingActionButtonGreen({
    required this.iconData,
    required this.onPressed
  });

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  // bool _press_fav = false;
  //
  // void onPressedFav() {
  //   setState(() {
  //     _press_fav = !_press_fav;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11da53),
      mini: true,
      tooltip: "Favorite",
      onPressed: widget.onPressed,
      child: Icon(widget.iconData),
      heroTag: null,
    );
  }
}
