import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iou_v2/main.dart';
import 'package:iou_v2/src/authentication.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IOU"),
      ),
      body: Consumer<ApplicationState>(
        builder: (context, appState, _) => AuthFunc(
            loggedIn: appState.loggedIn,
            signOut: () {
              FirebaseAuth.instance.signOut();
            }),
      ),
    );
  }
}
