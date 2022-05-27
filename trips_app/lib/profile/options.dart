import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookmark_button = Material(
      color: Colors.transparent,
      child: Center(
        child: Ink(
          height: 36.0,
          width: 36.0,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.bookmark_outline,
              size: 20.0,
            ),
            color: Colors.blueAccent,
            onPressed: () {},
          ),
        ),
      ),
    );

    final news_button = Material(
      color: Colors.transparent,
      child: Center(
        child: Ink(
          height: 36.0,
          width: 36.0,
          decoration: const ShapeDecoration(
            color: Colors.white70,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.card_giftcard,
              size: 20.0,
            ),
            color: Colors.blueAccent,
            onPressed: () {},
          ),
        ),
      ),
    );

    final add_button = Material(
      color: Colors.transparent,
      child: Center(
        child: Ink(
          height: 64.0,
          width: 64.0,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.add,
              size: 40.0,
            ),
            color: Colors.blueAccent,
            onPressed: () {},
          ),
        ),
      ),
    );

    final mail_button = Material(
      color: Colors.transparent,
      child: Center(
        child: Ink(
          height: 36.0,
          width: 36.0,
          decoration: const ShapeDecoration(
            color: Colors.white70,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.inbox,
              size: 20.0,
            ),
            color: Colors.blueAccent,
            onPressed: () {},
          ),
        ),
      ),
    );

    final people_button = Material(
      color: Colors.transparent,
      child: Center(
        child: Ink(
          height: 36.0,
          width: 36.0,
          decoration: const ShapeDecoration(
            color: Colors.white70,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.person,
              size: 20.0,
            ),
            color: Colors.blueAccent,
            onPressed: () {},
          ),
        ),
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        top: 190.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          bookmark_button,
          news_button,
          add_button,
          mail_button,
          people_button
        ],
      ),
      alignment: const Alignment(-0.9, -0.6),
    );
  }
}
