import 'package:flutter/material.dart';
import 'package:stage_projet/pages/profile/profile.dart';
import 'package:stage_projet/pages/avatar/avatar.dart';
import 'package:stage_projet/pages/singup/singup.dart';
import 'package:stage_projet/pages/profileUsername/profileUsername.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Singup()
    );
  }
}



