import 'package:flutter/material.dart';
import 'profiles_list.dart';
import 'custom_navbar.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBarTheme = AppBar(
      toolbarHeight: 100.0,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      flexibleSpace: ClipPath(
        clipper: CustomNavbar(),
        child: Container(
          height: 200.0,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue,
          child: const Center(
            child: Text(
              "Designers",
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: appBarTheme,
      body: ProfilesList(),
    );
  }

}