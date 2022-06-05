import 'package:flutter/material.dart';
import 'package:trips_app/User/bloc/bloc_user.dart';
import 'package:trips_app/widgets/gradient_background.dart';
import 'package:trips_app/widgets/button_green.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  @override
  State createState() {
    return _SignIn();
  }
}

class _SignIn extends State<SignIn> {
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return signInGoogleUI();
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        children: [
          GradientBackground(
            "Sign In",
            MediaQuery.of(context).size.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome \n This is your Travel App",
                style: TextStyle(
                  fontSize: 37.0,
                  fontFamily: 'Lato',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ButtonGreen(
                text: "Login with Gmail",
                onPressed: () {
                  userBloc.signIn().then((UserCredential user) => print(user));
                },
                width: 300.0,
                height: 50.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
