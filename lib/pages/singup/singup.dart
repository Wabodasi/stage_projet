import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stage_projet/pages/profile/profile.dart';
import 'package:stage_projet/pages/widgetComponents/appBarPagesSingup.dart';
import 'package:stage_projet/pages/widgetComponents/otherComponents.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

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
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const SizedBox(height: 5,),
                  //
                  // const MybackButton(),

                  SizedBox(height: (screenHeight * 4.6) / 100,),

                  Text(
                    AppLocalizations.of(context)!.titrePageSingup,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24
                    ),
                  ),

                  SizedBox(height: (screenHeight * 4.6) / 100,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.pageSingupMessage1,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),),
                      Container(
                        //color: Colors.lightGreen,
                        width: double.infinity,
                        height: 60,
                        padding: const EdgeInsets.fromLTRB(2, 5, 10, 5),
                        alignment: Alignment.centerLeft,
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 28, top: 12, right: 28, bottom: 12),
                              border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(17.0)
                                  )
                              ),
                              icon: Container(
                                width: 74,
                                height: double.infinity,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                    color: const Color(0xffd0dffa),
                                    borderRadius: BorderRadius.circular(17.0)
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset("assets/images/drapeau.svg",
                                      height: 13,
                                    ),
                                    const Text("+237",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              )
                          ),
                        ),
                      ),
                    ],
                  ),


                  SizedBox(height: (screenHeight * 4.6) / 100,),

                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    alignment: Alignment.centerLeft,
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
                        child: Text(AppLocalizations.of(context)!.textContinue),
                      ),
                    ),
                  ),

                  SizedBox(height: (screenHeight * 4.6) / 100,),

                  Text(
                    AppLocalizations.of(context)!.pageSingupMessage2,
                    textAlign: TextAlign.center,
                    style:const TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                    ),
                  ),

                  // Creation bouton retour
                ],
              ),
            ),
          )),
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
            child: Text(
              AppLocalizations.of(context)!.pageSingupMessage3,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          const Text('(+237)690 000 000',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              )),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: Text(AppLocalizations.of(context)!.pageSingupMessage4),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => Profile())));
            },
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            child: Container(
              height: 30,
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.confirm,
              ),
            ),
          )
        ],
      ),
    );
  }
}
