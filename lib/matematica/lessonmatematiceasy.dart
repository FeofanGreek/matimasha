import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matimasha/firstscreen/registrated.dart';

import 'matematicaselect.dart';
String right = 'Правильный ответ!\nТы молодец!';
String wrong = 'Ответ не правильный.\nБудь внимательнее!';


int counter  = 0;
int first = 0;
int second = 0;
String znak = '';
List variant =[0,0,0,0,0];


class lessonMatematicaEasy extends StatefulWidget {
  @override
  lessonMatematicaEasyState createState() => lessonMatematicaEasyState();
}

class lessonMatematicaEasyState extends State<lessonMatematicaEasy> {

  @override
  void initState() {
    super.initState();
    counter = 0;
    buildPrimer();
  }//initState

  randomFirst(){
    return Random().nextInt(100);
  }
  randomZnak(){
    List znak = ['-','+'];
    return znak[Random().nextInt(2)];
  }
  randomSecond(){
    if(znak == '-'){return Random().nextInt(first);} else{return Random().nextInt(100 - first);}
  }
  variants(){
int cell = Random().nextInt(5);

for(int i = 0; i < variant.length; i++){
  i == cell ? variant[i]=(first +  second * (znak == '-' ? -1 : 1)) : variant[i]=Random().nextInt(100);
}
  }

  buildPrimer(){
    first = randomFirst();
    znak = randomZnak();
    second = randomSecond();
    variants();
    setState(() {

    });
  }




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
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width /2 -80,
                margin: const EdgeInsets.fromLTRB(20,20,20,20),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/painter.png"),
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
                      Text('${selectedLevel == 1 ? 'Урок' : selectedLevel == 2 ? 'Пример' : 'Задание'} №${counter + 1}', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'ZenAntique'),textAlign: TextAlign.center),
                      SizedBox(height: 10,),
                      Text('Есть $first "яблок" ${znak == '-' ? 'убираем' : 'добавляем'} $second "яблок", сколько ${znak == '-' ? 'осталось' : 'получилось'}?', style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w400, fontFamily: 'Roboto'),textAlign: TextAlign.center),
                      SizedBox(height: 10,),
                      ///картинки
                      first < 9 && second < 9 && first +  second * (znak == '-' ? -1 : 1) < 9 ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                height: MediaQuery.of(context).size.width/2/12 - 3,
                                width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: Wrap(
                                  spacing: 0,
                                  alignment : WrapAlignment.center,
                                  children: first < 9 ? iconsGenerate(first) : iconsGenerate(1)
                              )
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: Text('$znak', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: Wrap(
                                  spacing: 0,
                                  alignment : WrapAlignment.center,
                                  children: second < 9 ? iconsGenerate(second) : iconsGenerate(1)
                              )
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: Text('=', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: Wrap(
                                  spacing: 0,
                                  alignment : WrapAlignment.center,
                                  children: first +  second * (znak == '-' ? -1 : 1) < 9 ? iconsGenerate(first +  second * (znak == '-' ? -1 : 1)) : iconsGenerate(1)
                              )
                            ),
                          ]) : Container(
                        alignment: Alignment.bottomCenter,
                        height: 70, width: 70,
                        margin: EdgeInsets.fromLTRB(0,0,0,0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(selectedPicture),
                              fit:BoxFit.contain, alignment: Alignment(0.0, 0.0)
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      ///сам пример
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: Text('$first', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: Text('$znak', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: Text('$second', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: Text('=', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: Text('?', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            ]),
                      SizedBox(height: 10,),
                      Text('${selectedLevel == 1 ? 'Правильный ответ: ${first +  second * (znak == '-' ? -1 : 1)}, нажми на него' : selectedLevel == 2 ? 'Выбери правильный ответ нажав на него.' : 'Введи правильный ответ'}', style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w400, fontFamily: 'Roboto'),textAlign: TextAlign.center),

                      ///варианты ответа
                      selectedLevel != 3 ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){
                                  if(variant[0] == first +  second * (znak == '-' ? -1 : 1)){
                                    dialog(context, 'Правильный ответ!\nТы молодец!');
                                  }else{
                                    dialog(context, 'Ответ не правильный.\nБудь внимательнее!');
                                  }
                                } ,
                                child: Text('${variant[0]}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: first +  second * (znak == '-' ? -1 : 1) == variant[0] && selectedLevel == 1 ? Colors.green : Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){if(variant[1] == first +  second * (znak == '-' ? -1 : 1)){
                                  dialog(context, right);
                                }else{
                                  dialog(context, wrong);
                                }
                                } ,
                                child: Text('${variant[1]}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: first +  second * (znak == '-' ? -1 : 1) == variant[1] && selectedLevel == 1 ? Colors.green : Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){if(variant[2] == first +  second * (znak == '-' ? -1 : 1)){
                                  dialog(context, right);
                                }else{
                                  dialog(context, wrong);
                                }
                                } ,
                                child: Text('${variant[2]}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: first +  second * (znak == '-' ? -1 : 1) == variant[2] && selectedLevel == 1 ? Colors.green : Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){if(variant[3] == first +  second * (znak == '-' ? -1 : 1)){
                                  dialog(context, right);
                                }else{
                                  dialog(context, wrong);
                                }
                                } ,
                                child: Text('${variant[3]}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: first +  second * (znak == '-' ? -1 : 1) == variant[3] && selectedLevel == 1 ? Colors.green : Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){if(variant[4] == first +  second * (znak == '-' ? -1 : 1)){
                                  dialog(context, right);
                                }else{
                                  dialog(context, wrong);
                                }
                                } ,
                                child: Text('${variant[4]}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: first +  second * (znak == '-' ? -1 : 1) == variant[4] && selectedLevel == 1 ? Colors.green : Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                          ])
                          ///ввод в ручную
                          : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: const Text('1', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: const Text('2', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: const Text('3', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: const Text('4', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: const Text('5', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: const Text('6', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: const Text('7', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: const Text('8', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: const Text('9', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5,5,0,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              height: MediaQuery.of(context).size.width/2/12 - 3,
                              width: MediaQuery.of(context).size.width/2/12 - 3,
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed:(){} ,
                                child: const Text('0', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  primary: Colors.blue,
                                  minimumSize: Size(MediaQuery.of(context).size.width/2/12 - 3, MediaQuery.of(context).size.width/2/12 - 3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),

                          ]),
                          ]),
                    ),
                  ]),
      ),
      ),
    );
  }

  iconsGenerate(int count,){
    List<Widget> ico = [];
    for(int i=0; i < count; i++){
      ico.add(iconForCount(selectedPicture, count));
    }
    return ico;
  }

  iconForCount(String url, int value){
    return Container(
      alignment: Alignment.bottomCenter,
      height: (MediaQuery.of(context).size.width/2/12 - 3) / value,
      width: (MediaQuery.of(context).size.width/2/12 - 3) / value,
      margin: EdgeInsets.fromLTRB(0,0,0,0),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(url),
            fit:BoxFit.contain, alignment: Alignment(0.0, 0.0)
        ),
      ),
    );
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
                                if(counter < 9) {
                                  buildPrimer();
                                  setState(() {
                                    counter = counter + 1;
                                  });
                                  Navigator.of(context).pop();
                                } else if(counter == 9){
                                  dialog(context, 'Занятие окончено!\nОценка: 5+');
                                  setState(() {
                                    counter = counter + 1;
                                  });

                                }else{
                                  setState(() {
                                    counter = 0;
                                  });
                                  Navigator.pushReplacement (context,
                                      MaterialPageRoute(builder: (context) => Regitrated()));
                                }
                              } ,
                              child: Text('Дальше', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF333333)),textAlign: TextAlign.center),
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

