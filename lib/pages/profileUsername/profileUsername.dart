import 'package:flutter/material.dart';
import 'package:stage_projet/pages/avatar/avatar.dart';

import '../widgetComponents/appBarPagesSingup.dart';
import '../widgetComponents/otherComponents.dart';
import '../widgetComponents/textFormFieldPagesSingup.dart';

class ProfileUsername extends StatefulWidget
{
  const ProfileUsername({super.key});

  @override
  State<ProfileUsername> createState() => _ProfileUsernameState();
}

class _ProfileUsernameState extends State<ProfileUsername> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: getAppBarPagesSingup(context),
      body: Container(
        height: double.infinity,
          padding: EdgeInsets.only(
            top: screenHeight * 0.02,
            right: (screenWidth * 5)/100,
            left: (screenWidth * 5)/100,
          ),
          decoration: Othercomponents.boxDecorationPagesSingup,
          child: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const SizedBox(height: 5,),
                      //
                      // const MybackButton(),

                      SizedBox(height: (screenHeight * 4.6) / 100,),

                      const Text("What should we call you",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24
                        ),
                      ),

                      SizedBox(height: (screenHeight * 3.7) / 100,),

                      const Text("Your @username is unique you  can alsways change it later",
                        style:TextStyle(
                          fontSize: 12,
                          color: Colors.black45,
                        ),
                      ),

                      SizedBox(height: (screenHeight * 3.7) / 100,),

                      TextFormFieldPagesSingUp(
                        title: "Name",
                        width: (screenWidth * 90)/100,
                        height: (screenHeight * 10)/100,
                      ),


                      SizedBox(height: (screenHeight * 41) / 100,),

                      Container(
                        alignment: Alignment.bottomCenter,
                        padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: ((context) => Avatar())
                                ));
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue
                          ),
                          child: Container(
                            width: (screenWidth * 90)/100,
                            height: (screenHeight * 4)/100,
                            alignment: Alignment.center,
                            child: const Text("Continue",),
                          ),
                        ),
                      ),
                      SizedBox(height: (screenHeight * 3) / 100,),
                    ],
                  ),
                ),
              )
          )),
    );
  }

  AppBar getAppBar(BuildContext context){
    return AppBar(
      leading: Container(
        margin: const EdgeInsetsDirectional.fromSTEB(12, 12, 0, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
                color: Colors.black54
            )
        ),
        child: BackButton(),
      ),
      backgroundColor: const Color(0xffd0dffa),
    );
  }
}