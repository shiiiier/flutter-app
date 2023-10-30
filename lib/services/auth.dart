import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_v1/screens/home/home.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';


class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(), 
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            providers: [
              EmailAuthProvider(),
              GoogleProvider(clientId: "1026832355391-ddo1f9ob7kjucv62lb1rif2ljdn4iorq.apps.googleusercontent.com" ),
            ],
            headerBuilder: (context, constraints, shrinkOffset) {
              return Padding(padding: const EdgeInsets.all(20),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset('assets/flutterfire_300x.png'),
              ),
              );
            },
            subtitleBuilder: (context, action) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: action == AuthAction.signIn
                  ? const Text('Welcome to Performance Rotors, please sign in!')
                  : const Text('Welcome to Performance Rotors, please sign up!'),
              );
            },
          );
        }

        return const HomeScreen();
      }
      );
  }
}