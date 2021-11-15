
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'firstscreen/firstscreennotregistrated.dart';



class launchScreen extends StatefulWidget {
  @override
  launchScreenState createState() => launchScreenState();
}

class launchScreenState extends State<launchScreen> {



  @override
  void initState() {
    super.initState();
    const twentyMillis = Duration(seconds:5);
    Timer(twentyMillis, () => Navigator.pushReplacement (context,
        MaterialPageRoute(builder: (context) => notRegitrated())));
  }//initState

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.green
              ],
            )
        ),
        child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                height: 250, width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.fromLTRB(0,50,0,0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/launch.png"),
                      fit:BoxFit.fitHeight, alignment: Alignment(0.0, 0.0)
                  ),
                ),),
              Container(
                alignment: Alignment.topCenter,
                height: 72, width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.fromLTRB(0,310,0,0),
                child:const Text('МАТИМАША', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'ZenAntique'),textAlign: TextAlign.center),),
              /*Container(
                alignment: Alignment.topCenter,
                height: 72, width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.fromLTRB(0,260,0,0),
                child:const Text('privet', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),textAlign: TextAlign.center,),),*/

            ]),
      ),

    );
  }

}

