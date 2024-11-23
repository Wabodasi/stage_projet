import 'package:flutter/material.dart';
import 'package:stage_projet/pages/profileUsername/profileUsername.dart';
import 'package:stage_projet/pages/widgetComponents/appBarPagesSingup.dart';
import 'package:stage_projet/pages/widgetComponents/myBackButton.dart';
import 'package:stage_projet/pages/widgetComponents/otherComponents.dart';
import 'package:stage_projet/pages/widgetComponents/textFormFieldPagesSingup.dart';

class Profile extends StatefulWidget{
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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

                    SizedBox(height: (screenHeight * 3.7) / 100,),

                    const Text("Complete your singup",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24
                      ),
                    ),

                    SizedBox(height: (screenHeight * 3.7) / 100,),

                    TextFormFieldPagesSingUp(
                      title: "Name",
                      width: (screenWidth * 90)/100,
                      height: (screenHeight * 10)/100,
                    ),

                    SizedBox(height: (screenHeight * 3.7) / 100,),

                    TextFormFieldPagesSingUp(
                      title: "Specialty",
                      width: (screenWidth * 90)/100,
                      height: (screenHeight * 10)/100,
                    ),

                    SizedBox(height: (screenHeight * 3.7) / 100,),

                    Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('You need a password',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text("Make sur it's 8 characters or more",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Color(0xff909398)
                            ),
                          ),

                          Container(
                            //color: Colors.lightGreen,
                            width: (screenWidth * 90)/100,
                            height: (screenHeight * 10)/100,
                            //padding: const EdgeInsets.only(left: 0, top: 5, right: 54, bottom: 5),
                            child: TextFormField(
                              obscureText: true,
                              enableSuggestions: false,
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
                      ),
                    ),

                    SizedBox(height: (screenHeight * 11) / 100,),

                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: ((context) => ProfileUsername())
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

  AppBar getAppBar(){
    return AppBar(
      leading: Container(
        margin: const EdgeInsetsDirectional.fromSTEB(12, 12, 0, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
                color: Colors.black54
            )
        ),
        child: const BackButton(),
      ),
      backgroundColor: const Color(0xffd0dffa),
    );
  }

}