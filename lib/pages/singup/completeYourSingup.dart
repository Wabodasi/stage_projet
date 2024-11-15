import 'package:flutter/material.dart';
import 'package:stage_projet/pages/singup/specifyUserName.dart';

class CompleteYourSingup extends StatefulWidget{
  const CompleteYourSingup({super.key});

  @override
  State<CompleteYourSingup> createState() => _CompleteYourSingupState();
}

class _CompleteYourSingupState extends State<CompleteYourSingup> {
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

       child: SingleChildScrollView(
          child: Column(
           children: [
             SizedBox(
               child: Container(
                 alignment: Alignment.topLeft,
                 height: 60,
                 margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                 //leftcolor: Colors.red,
                 child: const Text("Complete your singup",
                   style: TextStyle(
                       fontWeight: FontWeight.w700,
                       fontSize: 20
                   ),
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
                    const Text("Name"),
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

             //zone de text 2
             Container(
               //color: Colors.red,
               margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Text("Speciality"),
                   Container(
                     //color: Colors.lightGreen,
                     width: double.infinity,
                     height: 60,
                     padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),

                     // Speciality
                     child: DropdownButtonFormField (
                       // Initial Value
                       value: 'tr',
                       icon: const Icon(Icons.keyboard_arrow_down),
                       items: [],
                       onChanged: (newValue) {},
                       decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(17.0)
                           )
                       ),
                     ),
                   ),
                 ],
               ),
             ),

             Container(
               width: double.infinity,
               margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Text('You need a password',
                     style: TextStyle(
                       fontWeight: FontWeight.w700
                     ),
                   ),
                   const SizedBox(
                     height: 7,
                   ),
                   const Text("Make sur it's 8 characters or more"),

                   Container(
                     //color: Colors.lightGreen,
                     width: double.infinity,
                     height: 60,
                     padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                     child: TextFormField(
                       obscureText: true,
                       enableSuggestions: false,
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
               margin: const EdgeInsets.fromLTRB(0, 150, 0, 0),
               padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
               child: TextButton(
                 onPressed: () {
                   Navigator.of(context).push(
                       MaterialPageRoute(
                           builder: ((context) => SpecifyUserName())
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