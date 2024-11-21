import 'package:flutter/material.dart';
import 'package:stage_projet/pages/singup/completeYourSingup.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(
            top: 11,
            right: 20,
            bottom: 11,
            left: 20,
          ),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xffd4e2f9), Color(0xffffffff)],
            stops: [0.01, 0.25],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: SafeArea(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  // Creation bouton retour
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black54)),
                    child: BackButton(onPressed: () {}),
                  ),

                ],
              ),
            ),
          )),
    );
  }

  AppBar getAppBar(BuildContext context) {
    return AppBar(
      leading: Container(
        margin: const EdgeInsetsDirectional.fromSTEB(12, 12, 0, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black54)),
        child: BackButton(onPressed: () {}),
      ),
      backgroundColor: const Color(0xffd0dffa),
    );
  }

  Widget getModalBottomSheet(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(29), right: Radius.circular(29))),
      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 250,
            margin: const EdgeInsets.fromLTRB(0, 60, 0, 30),
            child: const Text(
              'Is you phone number correct ?',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          const Text('(+237)690 000 000',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              )),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: const Text(
                'Med Prepa will send a verification code to you phone number.'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => CompleteYourSingup())));
            },
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            child: Container(
              height: 30,
              alignment: Alignment.center,
              child: const Text(
                "Confirm",
              ),
            ),
          )
        ],
      ),
    );
  }
}
