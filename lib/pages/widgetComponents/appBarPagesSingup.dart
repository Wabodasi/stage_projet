import 'package:flutter/material.dart';

AppBar getAppBarPagesSingup(BuildContext context) {
  return AppBar(
    leading: Container(
        margin: const EdgeInsetsDirectional.only(start: 12, top: 12),
        // width: 45,
        // height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black54)),
        child: const Padding(
          padding: EdgeInsets.only(left: 6),
          child: BackButton(),
        )
    ),
    backgroundColor: const Color(0xffd4e2f9),

  );
}