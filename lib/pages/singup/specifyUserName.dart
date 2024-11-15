import 'package:flutter/material.dart';
import 'package:stage_projet/pages/singup/pickProfilePicture.dart';

class SpecifyUserName extends StatefulWidget
{
  const SpecifyUserName({super.key});

  @override
  State<SpecifyUserName> createState() => _SpecifyUserNameState();
}

class _SpecifyUserNameState extends State<SpecifyUserName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar(context),
        body: Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffd0dffa), Color(0xffffffff)],
                  stops: [0.01, 0.25],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
            ),

            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    child: Container(
                      alignment: Alignment.topLeft,
                      height: 60,
                      margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      //leftcolor: Colors.red,
                      child: const Text("What should we call you ?",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: const Text('Your @Username is  unique you can  alsways change it later',
                      style: TextStyle(
                          color: Colors.black45,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //zone de text 1
                  Container(
                    //color: Colors.red,
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Username"),
                        Container(
                          //color: Colors.lightGreen,
                          width: double.infinity,
                          height: 60,
                          padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                          child: TextFormField(
                            decoration: const InputDecoration(
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


                  // Creation du button continuer
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 350, 0, 0),
                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: ((context) => PickProfilePicture())
                            ));
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 30,
                        alignment: Alignment.center,
                        child: const Text("Continue",),
                      ),
                    ),
                  )
                ],
              ),
            )
        )
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