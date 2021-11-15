import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matimasha/firstscreen/registrated.dart';

String name ='';

class notRegitrated extends StatefulWidget {
  @override
  notRegitratedState createState() => notRegitratedState();
}

class notRegitratedState extends State<notRegitrated> {
  TextEditingController _controllerName = TextEditingController(text: '');
  FocusNode myFocusNode = new FocusNode();
  void _requestFocus(){
    setState(() {
      FocusScope.of(context).requestFocus(myFocusNode);
    });
  }


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
                      image: AssetImage("images/hello.png"),
                      fit:BoxFit.fitWidth, alignment: Alignment(0.0, 0.0)
                  ),
                ),),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width/2 + 30,
                child:Column(
                  children:[
                    const SizedBox(height: 30,),
                    const Text('Привет! Я Матимаша.\nДавай дружить?', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'ZenAntique'),textAlign: TextAlign.center),
                    const SizedBox(height: 10,),
                    const Text('Напиши свое имя:', style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w400, fontFamily: 'Roboto'),textAlign: TextAlign.center),
                    const SizedBox(height: 10,),
                    Text(name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique'),textAlign: TextAlign.center),
                    const SizedBox(height: 10,),
                    Row(
                      children:[
                        Container(
                          margin: const EdgeInsets.fromLTRB(5,5,0,0),
                          padding: const EdgeInsets.fromLTRB(0,0,0,0),
                          height: MediaQuery.of(context).size.width/2/12 - 3,
                          width: MediaQuery.of(context).size.width/2/12 - 3,
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed:(){
                              setState(() {
                                name = name + 'Й';
                              });
                            } ,
                            child: const Text('Й', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                            onPressed:(){
                              setState(() {
                                name = name + 'Ц';
                              });

                            } ,
                            child: const Text('Ц', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                            onPressed:(){
                              setState(() {
                                name = name + 'У';
                              });

                            } ,
                            child: const Text('У', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                            onPressed:(){
                              setState(() {
                                name = name + 'К';
                              });

                            } ,
                            child: const Text('К', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                            onPressed:(){
                              setState(() {
                                name = name + 'Е';
                              });

                            } ,
                            child: const Text('Е', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                            onPressed:(){
                              setState(() {
                                name = name + 'Н';
                              });

                            } ,
                            child: const Text('Н', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                            onPressed:(){
                              setState(() {
                                name = name + 'Г';
                              });

                            } ,
                            child: const Text('Г', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                            onPressed:(){
                              setState(() {
                                name = name + 'Ш';
                              });

                            } ,
                            child: const Text('Ш', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                            onPressed:(){
                              setState(() {
                                name = name + 'Щ';
                              });

                            } ,
                            child: const Text('Щ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                            onPressed:(){
                              setState(() {
                                name = name + 'З';
                              });

                            } ,
                            child: const Text('З', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                            onPressed:(){
                              setState(() {
                                name = name + 'Х';
                              });

                            } ,
                            child: const Text('Х', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                            onPressed:(){
                              setState(() {
                                name = name + 'Ъ';
                              });

                            } ,
                            child: const Text('Ъ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                    /// next row
                    Row(
                        children:[
                          Container(
                            margin: const EdgeInsets.fromLTRB(5,5,0,0),
                            padding: const EdgeInsets.fromLTRB(0,0,0,0),
                            height: MediaQuery.of(context).size.width/2/12 - 3,
                            width: MediaQuery.of(context).size.width/2/12 - 3,
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed:(){
                                setState(() {
                                  name = name + 'Ф';
                                });
                              } ,
                                child: const Text('Ф', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'Ы';
                                });

                              } ,
                              child: const Text('Ы', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'В';
                                });

                              } ,
                              child: const Text('В', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'А';
                                });

                              } ,
                              child: const Text('А', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'П';
                                });

                              } ,
                              child: const Text('П', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'Р';
                                });

                              } ,
                              child: const Text('Р', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'О';
                                });

                              } ,
                              child: const Text('О', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'Л';
                                });

                              } ,
                              child: const Text('Л', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'Д';
                                });

                              } ,
                              child: const Text('Д', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'Ж';
                                });

                              } ,
                              child: const Text('Ж', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'Э';
                                });

                              } ,
                              child: const Text('Э', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'Ё';
                                });

                              } ,
                              child: const Text('Ё', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                    /// next row
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'Я';
                                });
                              } ,
                              child: const Text('Я', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'Ч';
                                });

                              } ,
                              child: const Text('Ч', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'С';
                                });

                              } ,
                              child: const Text('С', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'М';
                                });

                              } ,
                              child: const Text('М', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'И';
                                });

                              } ,
                              child: const Text('И', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'Т';
                                });

                              } ,
                              child: const Text('Т', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'Ь';
                                });

                              } ,
                              child: const Text('Ь', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'Б';
                                });

                              } ,
                              child: const Text('Б', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              onPressed:(){
                                setState(() {
                                  name = name + 'Ю';
                                });

                              } ,
                              child: const Text('Ю', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                    /// next row
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Container(
                            margin: const EdgeInsets.fromLTRB(5,5,0,0),
                            padding: const EdgeInsets.fromLTRB(0,0,0,0),
                            height: MediaQuery.of(context).size.width/2/12 - 3,
                            width: MediaQuery.of(context).size.width/2/4 - 3,
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed:(){
                                setState(() {
                                  name = name + ' ';
                                });
                              } ,
                              child: const Text('ПРОБЕЛ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.fromLTRB(0,0,0,0),
                                primary: Colors.blue,
                                minimumSize: Size(MediaQuery.of(context).size.width/2/4 - 3, MediaQuery.of(context).size.width/2/12 - 3),
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
                            width: MediaQuery.of(context).size.width/2/4 - 3,
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed:(){
                                setState(() {
                                  name = name.substring(0, name.length - 1);
                                });

                              } ,
                              child: const Text('СТЕРЕТЬ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.fromLTRB(0,0,0,0),
                                primary: Colors.red,
                                minimumSize: Size(MediaQuery.of(context).size.width/2/4 - 3, MediaQuery.of(context).size.width/2/12 - 3),
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
                            width: MediaQuery.of(context).size.width/2/4 - 3,
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed:(){
                                if(name ==''){
                                  dialog(context, 'А как же тебя зовут?');
                                }else{
                                  Navigator.pushReplacement (context,
                                      MaterialPageRoute(builder: (context) => Regitrated()));
                                }

                              } ,
                              child: const Text('ГОТОВО', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.fromLTRB(0,0,0,0),
                                primary: Colors.green,
                                minimumSize: Size(MediaQuery.of(context).size.width/2/4 - 3, MediaQuery.of(context).size.width/2/12 - 3),
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
                              child: Text('ОЙ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF333333)),textAlign: TextAlign.center),
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

