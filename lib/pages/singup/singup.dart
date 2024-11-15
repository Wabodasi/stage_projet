import 'package:flutter/material.dart';
import 'package:stage_projet/pages/singup/completeYourSingup.dart';

class Singup extends StatelessWidget{
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
      body: Container(
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        // Creation du degrade
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffd0dffa), Color(0xffffffff)],
            stops: [0.01, 0.25],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),

        child: Column(
          children: [
            SizedBox(
              child: Container(
                alignment: Alignment.topLeft,
                height: 60,
                margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                //leftcolor: Colors.red,
                child: const Text("Sign up",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("login with phone number",
                style: TextStyle(
                  color: Colors.black
                ),),

                const SizedBox(height: 4),

                Container(
                  //color: Colors.lightGreen,
                  width: double.infinity,
                  height: 60,
                  padding: const EdgeInsets.fromLTRB(2, 5, 10, 5),

                  child: TextFormField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(17.0)
                        )
                      ),
                      icon: Container(
                        width: 70,
                        height: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: const Color(0xffd0dffa),
                          borderRadius: BorderRadius.circular(17.0)
                        ),
                        child: const Text('🇨🇲+237'),
                      )
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                  child: const Text("A code  will be sent to your number",
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 12
                    ),
                  ),
                ),

                const SizedBox(
                  height: 35,
                ),

                Container(
                  //color: Colors.orange,
                  width: double.infinity,
                  height: 60,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.center,

                  // Creation du bouton continuer
                  child: TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return getModalBottomSheet(context);
                          });
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
                ),

                const SizedBox(
                  height: 5,
                ),

                // texte de fin
                Container(
                  width: double.infinity,
                  height: 100,
                  //alignment: Alignment.center,
                  //color: Colors.amberAccent,
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: const Text('By signing up you agree to the. terms of service and'
                      'Privacy Policy including Cookie Use',
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      fontSize: 11,
                      color: Colors.black45,
                    ),
                  ),
                )
              ]

            )

          ],
        ),
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
        child: BackButton(
          onPressed: () {}

        ),
      ),
      backgroundColor: const Color(0xffd0dffa),
    );
  }

  Widget getModalBottomSheet(BuildContext context){
    return Container(
      height: 500,

      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(29),
              right: Radius.circular(29)
          )
      ),
      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 250,
            margin: const EdgeInsets.fromLTRB(0, 60, 0, 30),
            child: const Text('Is you phone number correct ?',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20
              ),
            ),
          ),
          const Text('(+237)690 000 000',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              )
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: const Text('Med Prepa will send a verification code to you phone number.'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => CompleteYourSingup())
                )
              );
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.blue
            ),
            child: Container(
              height: 30,
              alignment: Alignment.center,
              child: const Text("Confirm",),
            ),
          )
        ],
      ),
    );
  }
}



