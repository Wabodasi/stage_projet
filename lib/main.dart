import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:stage_projet/pages/profile/profile.dart';
import 'package:stage_projet/pages/avatar/avatar.dart';
import 'package:stage_projet/pages/singup/singup.dart';
import 'package:stage_projet/pages/profileUsername/profileUsername.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stage_projet/pages/splashScreen/chooseLanguage.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Locale _locale = Locale('en', 'US');

  void setLocale(Locale locale)
  {
    setState(() {
      this._locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Nunito'
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      locale:  _locale,
      supportedLocales: AppLocalizations.supportedLocales,

      home: ChooseLanguage(onLocaleChanged: setLocale)
    );
  }
}



