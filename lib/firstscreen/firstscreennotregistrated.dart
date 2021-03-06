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
                    const Text('????????????! ?? ????????????????.\n?????????? ???????????????', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'ZenAntique'),textAlign: TextAlign.center),
                    const SizedBox(height: 10,),
                    const Text('???????????? ???????? ??????:', style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w400, fontFamily: 'Roboto'),textAlign: TextAlign.center),
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
                                name = name + '??';
                              });
                            } ,
                            child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                name = name + '??';
                              });

                            } ,
                            child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                name = name + '??';
                              });

                            } ,
                            child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                name = name + '??';
                              });

                            } ,
                            child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                name = name + '??';
                              });

                            } ,
                            child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                name = name + '??';
                              });

                            } ,
                            child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                name = name + '??';
                              });

                            } ,
                            child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                name = name + '??';
                              });

                            } ,
                            child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                name = name + '??';
                              });

                            } ,
                            child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                name = name + '??';
                              });

                            } ,
                            child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                name = name + '??';
                              });

                            } ,
                            child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                name = name + '??';
                              });

                            } ,
                            child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });
                              } ,
                                child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });
                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  name = name + '??';
                                });

                              } ,
                              child: const Text('??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              child: const Text('????????????', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              child: const Text('??????????????', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                                  dialog(context, '?? ?????? ???? ???????? ???????????');
                                }else{
                                  Navigator.pushReplacement (context,
                                      MaterialPageRoute(builder: (context) => Regitrated()));
                                }

                              } ,
                              child: const Text('????????????', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: 'ZenAntique') ,textAlign: TextAlign.center,) ,
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
                              child: Text('????', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF333333)),textAlign: TextAlign.center),
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

