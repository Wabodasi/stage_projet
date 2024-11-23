import 'package:flutter/material.dart';

class TextFormFieldPagesSingUp extends StatelessWidget{
  final String title;
  final double width;
  final double height;

  const TextFormFieldPagesSingUp({super.key, required this.title, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(this.title),
        Container(
          //color: Colors.lightGreen,
          width: this.width,
          height: this.height,
          //padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
          child: TextFormField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(left: 28, top: 12, right: 28, bottom: 12),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(17.0)
                  )
              ),
            ),
          ),
        ),
      ],
    );
  }

}