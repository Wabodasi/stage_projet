import 'package:flutter/material.dart';

class PickProfilePicture extends StatefulWidget
{
  const PickProfilePicture({super.key});

  @override
  State<PickProfilePicture> createState() => _PickProfilePictureState();
}

class _PickProfilePictureState extends State<PickProfilePicture> {

  List<String> listImagesProfile = [];
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar(),
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

          child: Column(

            children: [
              SizedBox(
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 60,
                  margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  //leftcolor: Colors.red,
                  child: const Text("Pick a profile picture",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                    ),
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.only(left: 0.0, top: 40.0, bottom: 0.0),
                //color: Colors.red,
                child: CircleAvatar(
                  backgroundColor: currentColor,
                  radius: 70,
                ),
              ),

              Text('you can also your awn'),

              Container(
                height: 70,
                margin: const EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 0),
                child: listViewImagesProfile(listImagesProfile)
              ),
              Container(
                height: 70,
                margin: const EdgeInsets.only(left: 0, top: 9, right: 0, bottom: 0),
                child: listViewColorProfile(listColorProfile),
              ),

              // Creation du button continuer
              Container(
                margin: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 30,
                    alignment: Alignment.center,
                    child: const Text("Next",),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }

  ListView listViewImagesProfile(List<String> listImages) {
    return ListView.builder(
      itemCount: 7,
      scrollDirection: Axis.horizontal,

      itemBuilder: (BuildContext context, int index){
        return Container(
            margin: const EdgeInsets.only(left: 2, top: 0, right: 2, bottom: 0),
            child: GestureDetector(
              child: const CircleAvatar(
                radius: 30,
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

