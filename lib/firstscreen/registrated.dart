import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matimasha/matematica/matematicaselect.dart';

import 'firstscreennotregistrated.dart';

String gameType = '';
int gameSelect = 0;

class Regitrated extends StatefulWidget {
  @override
  RegitratedState createState() => RegitratedState();
}

class RegitratedState extends State<Regitrated> {

  @override
  void initState() {
    super.initState();

  }//initState

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body:GestureDetector(
        onTap: () {
          setState(() {
            FocusScope.of(context).requestFocus(FocusNode());
          });
        }, child:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
        child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width /2 -80,
                margin: const EdgeInsets.fromLTRB(20,20,20,20),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/respect.png"),
                      fit:BoxFit.fitWidth, alignment: Alignment(0.0, 0.0)
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width/2 + 30,
                child:Column(
                    children:[
                      const SizedBox(height: 30,),
                      Text('Я Матимаша, а ты $name.', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'ZenAntique'),textAlign: TextAlign.center),
                      const SizedBox(height: 10,),
                      const Text('Давай играть в математику!\nВыбери вариант', style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w400, fontFamily: 'Roboto'),textAlign: TextAlign.center),
                      const SizedBox(height: 10,),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){
                                  setState(() {
                                    gameType = 'Сложение и вычитание';
                                    gameSelect = 1;
                                  });
                                  Navigator.pushReplacement (context,
                                      MaterialPageRoute(builder: (context) => matematicaSelect()));
                                } ,
                                child: const Text('СЛОЖЕНИЕ И ВЫЧИТАНИЕ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){
                                  setState(() {
                                    gameType = 'Умножение и деление';
                                    gameSelect = 2;
                                  });
                                  Navigator.pushReplacement (context,
                                      MaterialPageRoute(builder: (context) => matematicaSelect()));
                                } ,
                                child: const Text('УМНОЖЕНИЕ И ДЕЛЕНИЕ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.red,
                                  minimumSize: Size(MediaQuery.of(context).size.width/3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),

                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){
                                  setState(() {
                                    gameType = 'Сложные примеры';
                                    gameSelect = 3;
                                  });
                                  Navigator.pushReplacement (context,
                                      MaterialPageRoute(builder: (context) => matematicaSelect()));
                                } ,
                                child: const Text('СЛОЖНЫЕ ПРИМЕРЫ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.green,
                                  minimumSize: Size(MediaQuery.of(context).size.width/3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),

                          ])
                    ]),
              ),
            ]),
      ),
      ),
    );
  }

}

