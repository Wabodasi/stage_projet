import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stage_projet/pages/singup/singup.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../profile/profile.dart';


enum Language { FRANCAIS, ENGLAIS}


class ChooseLanguage extends StatefulWidget{
  final Function(Locale) onLocaleChanged;
  const ChooseLanguage({super.key, required this.onLocaleChanged });

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState(onLocaleChanged: onLocaleChanged);
}

class _ChooseLanguageState extends State<ChooseLanguage> {

  final Function(Locale) onLocaleChanged;
  _ChooseLanguageState({required this.onLocaleChanged});
  Language currentLanguage = Language.ENGLAIS;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xff456480),
        alignment: Alignment.center,
        child: Container(
          //color: Colors.red,
          width: 340,
          height: 340,
          child: Column(
            children: [
              Text(AppLocalizations.of(context)!.setYourLanguage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xfffcfcfc),
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: (screenHeight * 4.6) / 100,),
              GestureDetector(
                onTap: () {
                  changeCurrentLanguage(Language.ENGLAIS);
                },
                child: Container(
                  height: 71,
                  decoration: BoxDecoration(
                      color: (currentLanguage == Language.ENGLAIS)?Color(0xffc4c4c4):Color(0x1afcfcfc),
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(10), bottom: Radius.circular(0))
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 15, right: 28),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/images/drapEn.svg"),
                        const SizedBox(width: 26,),
                        const Text("English",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Expanded(
                            child: Visibility(
                              visible: (currentLanguage == Language.ENGLAIS),
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: SvgPicture.asset("assets/images/check.svg"),
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  changeCurrentLanguage(Language.FRANCAIS);
                },
                child: Container(
                  height: 71 ,
                  decoration: BoxDecoration(
                      color: (currentLanguage == Language.FRANCAIS)?Color(0xffc4c4c4):Color(0x1afcfcfc),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(0), bottom: Radius.circular(10))
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 15, right: 28),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/images/drapFr.svg"),
                        const SizedBox(width: 26,),
                        const Text("Français",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Expanded(
                            child: Visibility(
                              visible: (currentLanguage == Language.FRANCAIS),
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: SvgPicture.asset("assets/images/check.svg"),
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: (screenHeight * 8.6) / 100,),
              ElevatedButton(
                onPressed: () {
                  continuer(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff294259),
                  minimumSize: const Size(155, 44),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    // Rayon de 20 pixels
                  ),
                ),
                child: Text(AppLocalizations.of(context)!.textContinue,
                  style: const TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                    fontSize: 14
                  ),
                ),
              )

            ],
          ),
        )
      ),
    );
  }

  void changeCurrentLanguage(Language lang)
  {
    if(currentLanguage != lang)
    {

      currentLanguage = lang;
    }
    if(currentLanguage == Language.FRANCAIS){
      onLocaleChanged(Locale('fr', 'FR'));
    }
    else if(currentLanguage == Language.ENGLAIS)
    {
      onLocaleChanged(Locale('en', 'US'));
    }
  }

  void continuer(BuildContext context)
  {
    Navigator.of(context).push(MaterialPageRoute(
        builder: ((context) => Singup())));
  }

}