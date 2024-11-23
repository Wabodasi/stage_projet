import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgetComponents/appBarPagesSingup.dart';
import '../widgetComponents/otherComponents.dart';
import '../widgetComponents/textFormFieldPagesSingup.dart';

class Avatar extends StatefulWidget
{
  const Avatar({super.key});

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {

  List<String> listImagesProfile = [
    'assets/images/profil1.svg',
    'assets/images/profil2.svg',
    'assets/images/profil3.svg',
    'assets/images/profil4.svg',
    'assets/images/profil5.svg',
  ];
  List<Color> listColorProfile = [
    Colors.amberAccent,
    Colors.purple,
    Colors.deepOrangeAccent,
    Colors.pink,
    Colors.black54,
    Colors.indigo,
    Colors.indigoAccent,
    Colors.lime,
    Colors.yellow,
    Colors.purpleAccent
  ];
  Color currentColor = Colors.indigoAccent;
  String currentImageProfile = 'assets/images/profil1.svg';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
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

                      const Text("Pick a profile picture",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24
                        ),
                      ),

                      SizedBox(height: (screenHeight * 4.6) / 100,),

                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(left: 6.0, top: 6.0, right: 6.0,bottom: 6.0),
                        //color: Colors.red,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundColor: currentColor,
                          radius: 70,
                          child: SvgPicture.asset(currentImageProfile,
                            height: double.infinity,
                          ),
                        ),
                      ),

                      SizedBox(height: (screenHeight * 4.6) / 100,),

                     Container(
                       alignment: Alignment.topCenter,
                       child:  const Text('you can also your awn ',
                         textAlign: TextAlign.center,
                         style:TextStyle(
                           fontSize: 12,
                           color: Colors.black45,
                         ),
                       ),
                     ),

                      SizedBox(height: (screenHeight * 0.9) / 100,),

                      Container(
                          height: 70,
                          child: listViewImagesProfile(listImagesProfile)
                      ),
                      SizedBox(height: (screenHeight * 0.3) / 100,),
                      Container(
                        height: 70,
                        child: listViewColorProfile(listColorProfile),
                      ),

                      SizedBox(height: (screenHeight * 13) / 100,),

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
                      SizedBox(height: (screenHeight * 2) / 100,),
                    ],
                  ),
                ),
              )
          )),
    );
  }

  ListView listViewImagesProfile(List<String> listImages) {
    return ListView.builder(
      itemCount: listImages.length,
      scrollDirection: Axis.horizontal,

      itemBuilder: (BuildContext context, int index){
        return Container(
            margin: const EdgeInsets.only(left: 2, top: 0, right: 2, bottom: 0),
            decoration: BoxDecoration(
              border: (listImages[index] == currentImageProfile) ? Border.all(color: Colors.blueGrey): null,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(

              onTap: () {
                setState(() {
                  currentImageProfile = listImages[index];
                });
              },
              
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 30,
                child: SvgPicture.asset(listImages[index]),
              ),
            )
        );
      },
    );
  }
  ListView listViewColorProfile(List<Color> listColors) {
    return ListView.builder(
      itemCount: listColors.length,
      scrollDirection: Axis.horizontal,

      itemBuilder: (BuildContext context, int index){
        return Container(
            margin: const EdgeInsets.only(left: 2, top: 0, right: 2, bottom: 0),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: (listColors[index] == currentColor) ? Colors.blueAccent:null,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentColor = listColors[index];
                });
              },
              child: CircleAvatar(
                backgroundColor: listColors[index],
                radius: 30,
              ),
            )
        );
      },
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

