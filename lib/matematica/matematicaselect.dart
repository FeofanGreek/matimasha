import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matimasha/firstscreen/registrated.dart';

import 'lessonmatematiceasy.dart';

String selectedPicture = '';
int selectedLevel = 0;
List picUrls = [{"img":"images/airplane.png", "select" : false}, {"img":"images/apple.png", "select" : false}, {"img":"images/car.png", "select" : false}, {"img":"images/dragon.png", "select" : false}, {"img":"images/girafe.png", "select" : false}, {"img":"images/horse.png", "select" : false}, {"img":"images/icecream.png", "select" : false}, {"img":"images/princess.png", "select" : false}, {"img":"images/robo.png", "select" : false}];

class matematicaSelect extends StatefulWidget {
  @override
  matematicaSelectState createState() => matematicaSelectState();
}

class matematicaSelectState extends State<matematicaSelect> {

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
        color: Colors.blueGrey,
        child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width /2 -80,
                margin: const EdgeInsets.fromLTRB(20,20,20,20),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/remember.png"),
                      fit:BoxFit.fitWidth, alignment: Alignment(0.0, 0.0)
                  ),
                ),child:GestureDetector(onTap: (){
                Navigator.pushReplacement (context,
                    MaterialPageRoute(builder: (context) => Regitrated()));
              }, child:Container(margin: const EdgeInsets.fromLTRB(0,10,20,20),  height: 30, color: Colors.blueGrey , child:Row(
            children:[
            Icon(Icons.arrow_back_rounded, size: 30, color: Colors.green,),
              Text('Обратно', style: TextStyle(fontSize: 18, color: Colors.green,fontWeight: FontWeight.w400, fontFamily: 'Roboto'),textAlign: TextAlign.center),
            ])
              ))),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width/2 + 30,
                child:Column(
                    children:[
                      SizedBox(height: 30,),
                      Text('Играем в $gameType', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'ZenAntique'),textAlign: TextAlign.center),
                      SizedBox(height: 10,),
                      Text('Выбери, что или кого мы будем считать:', style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w400, fontFamily: 'Roboto'),textAlign: TextAlign.center),
                      SizedBox(height: 10,),
                      Wrap(
                          spacing: 8,
                          alignment : WrapAlignment.center,
                          children: iconsGenerate()
                      ),
                      SizedBox(height: 10,),
                      Text('Кто из нас будет считать?', style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w400, fontFamily: 'Roboto'),textAlign: TextAlign.center),
                      SizedBox(height: 10,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12+4,
                              width: MediaQuery.of(context).size.width/2/4 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){
                                  setState(() {
                                    selectedLevel =1;
                                  });
                                  if(selectedPicture == ''){
                                    dialog(context, 'Выбери картинку');
                                  }else{Navigator.pushReplacement (context,
                                      MaterialPageRoute(builder: (context) => lessonMatematicaEasy()));}
                                } ,
                                child: const Text('Я', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  alignment: Alignment.center,
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/4 - 3, MediaQuery.of(context).size.width/2/12+4),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12+4,
                              width: MediaQuery.of(context).size.width/2/4 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){
                                  setState(() {
                                    selectedLevel =2;
                                  });
                                  if(selectedPicture == ''){
                                    dialog(context, 'Выбери картинку');
                                  }else{Navigator.pushReplacement (context,
                                      MaterialPageRoute(builder: (context) => lessonMatematicaEasy()));}

                                } ,
                                child: const Text('Вместе', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.red,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/4 - 3, MediaQuery.of(context).size.width/2/12+4),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12+4,
                              width: MediaQuery.of(context).size.width/2/4 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){
                                  setState(() {
                                    selectedLevel =3;
                                  });
                                  if(selectedPicture == ''){
                                    dialog(context, 'Выбери картинку');
                                  }else{Navigator.pushReplacement (context,
                                      MaterialPageRoute(builder: (context) => lessonMatematicaEasy()));}
                                } ,
                                child: const Text('Ты', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                    alignment: Alignment.center,
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.green,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/4 - 3, MediaQuery.of(context).size.width/2/12+4),
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

  iconsGenerate(){
    List<Widget> ico = [];
    for(int i=0; i < picUrls.length; i++){
      ico.add(iconForCount(picUrls[i]['img'], i));
    }
    return ico;
  }

  iconForCount(String url, int index){
    return GestureDetector(onTap:(){
      for(int i=0; i < picUrls.length; i++){
        picUrls[i]['select'] = false;
      }
      setState(() {
        selectedPicture = picUrls[index]['img'];
        picUrls[index]['select'] = !picUrls[index]['select'];
      });
    }, child:Container(
        alignment: Alignment.bottomCenter,
        height: 75, width: 75,
        margin: EdgeInsets.fromLTRB(0,0,0,0),
        padding: EdgeInsets.fromLTRB(5,5,5,5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(10.0)
          ),
          border: Border.all(color: picUrls[index]['select'] == true ? Colors.blueAccent : Colors.blueGrey, width: 3, style: BorderStyle.solid),

        ),child: Container(
      alignment: Alignment.bottomCenter,
      height: 70, width: 70,
      margin: EdgeInsets.fromLTRB(0,0,0,0),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(url),
            fit:BoxFit.contain, alignment: Alignment(0.0, 0.0)
        ),
      ),
    )));
  }

  dialog(var context, message){
    return showDialog(
        context: context,
        barrierDismissible: false,
        barrierColor: Colors.transparent,
        builder: (context) {
          return AlertDialog(
              backgroundColor: Colors.grey.withOpacity(0.5),
              contentPadding: EdgeInsets.fromLTRB(0, 0, 0 , 0),
              insetPadding: EdgeInsets.all(0),
              elevation: 0.0,
              content:Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.center,
                child: Container(
                    width: 300,
                    //height: 250
                    height: 200,
                    margin: EdgeInsets.fromLTRB(20,20,20,20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFFFFFFF),
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(16.5),
                      color: Color(0xFFFFFFFF),
                    ),
                    padding: EdgeInsets.fromLTRB(20,20,20,20),
                    child:  Column(
                        children: <Widget>[
                          Text(message, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF333333)),textAlign: TextAlign.center),
                          SizedBox(height: 10,),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.fromLTRB(0,10,0,0),
                            child: TextButton(
                              onPressed:(){
                                  Navigator.of(context).pop();

                              } ,
                              child: Text('Выбрать', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF333333)),textAlign: TextAlign.center),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                minimumSize: Size(MediaQuery.of(context).size.width, 20),

                              ),
                            ),
                          ),
                        ])

                ),
              )
          );
        });

  }
}

