import 'package:flutter/material.dart';

class MybackButton extends StatefulWidget {
  const MybackButton({super.key});

  @override
  State<MybackButton> createState() => _MybackButtonState();
}

class _MybackButtonState extends State<MybackButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black54)),
        child: const BackButton(
          style: ButtonStyle(
              padding: WidgetStatePropertyAll(EdgeInsets.only(left: 12))
          ),
        )
    );
  }
}