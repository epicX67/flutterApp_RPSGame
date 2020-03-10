import 'dart:ui';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageInit extends StatefulWidget{
  HomePageInit({Key key,this.appName}):super(key:key);
  final appName;
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePageInit>{
  dynamic playerWinChecker(){
    if(score>20){
      return true;
    }else{
      return false;
    }
  }
  darkHandle(){
    setState(() {
      if(darkMode){
        bgColor=Color.fromARGB(255, 255, 255, 255);
        txtColor=Color.fromARGB(255, 48, 48, 48);
        txtStyle=TextStyle(color: Color.fromARGB(255, 48, 48, 48),);
        sdBgColor=Color.fromARGB(255, 230, 239, 253);
        X=Icons.brightness_2;
        darkMode=false;
      }else{
        bgColor=Color.fromARGB(255, 48, 48, 48);
        txtColor=Color.fromARGB(255, 255, 255, 255);
        txtStyle=TextStyle(color: Color.fromARGB(255, 255, 255, 255),);
        sdBgColor=Color.fromARGB(255, 47, 74, 88);
        X=Icons.brightness_medium;
        darkMode=true;
      }
    });

  }
  playerInit(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Name'),
          content: TextField(
            controller: playerNameController,
            decoration: InputDecoration(
              hintText: playerNameController.text,
            ),

          ),
          actions: <Widget>[
            FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Cancel')),
            FlatButton(
                onPressed: (){
                  setState(() {
                    playerName=playerNameController.text;
                    Navigator.of(context).pop();
                  });
                  },
                child: Text('Ok')
            )
          ],
        );
      }
    );
  }
  playerScored(){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Reeeeeeeeeee'),
            content: Text('You Scored'),
            actions: <Widget>[
              FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Ok')),
            ],
          );
        }
    );
  }
  playerwin(){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Pepe reeeeeeeeeeeeeeeeee'),
            content: Text('You Won'),
            actions: <Widget>[
              FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Ok')),
            ],
          );
        }
    );
  }
  botScored(){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('You are beaten like dogs'),
            content: Text('Try Again'),
            actions: <Widget>[
              FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Ok')),
            ],
          );
        }
    );
  }
  _actionInput1(){
    setState(() {
      botVal=random.nextInt(3);
      playerIcon=Icons.filter_hdr;
      switch(botVal){
        case 0:
          botIcon=Icons.filter_hdr;
          botColorStatus1=Color.fromARGB(255, 60, 63, 65);
          botColorStatus2=Color.fromARGB(255, 60, 63, 65);
          playerColorStatus1=Color.fromARGB(255, 60, 63, 65);
          playerColorStatus2=Color.fromARGB(255, 60, 63, 65);
          break;
        case 1:
          botIcon=Icons.crop_portrait;
          score-=1;
          botColorStatus1=Color.fromARGB(255, 87, 118, 251);
          botColorStatus2=Color.fromARGB(255, 99, 99, 215);
          playerColorStatus1=Color.fromARGB(255, 226, 86, 0);
          playerColorStatus2=Color.fromARGB(255, 254, 0, 97);
          break;
        case 2:
          botIcon=Icons.content_cut;
          score+=5;
          playerColorStatus1=Color.fromARGB(255, 87, 118, 251);
          playerColorStatus2=Color.fromARGB(255, 99, 99, 215);
          botColorStatus1=Color.fromARGB(255, 226, 86, 0);
          botColorStatus2=Color.fromARGB(255, 254, 0, 97);
          if(playerWinChecker()){
            playerwin();
          }else{
            playerScored();
          }
          break;
      }
    });
  }
  _actionInput2(){
    setState(() {
      botVal=random.nextInt(3);
      playerIcon=Icons.crop_portrait;
      switch(botVal){
        case 0:
          botIcon=Icons.filter_hdr;
          score+=5;
          playerColorStatus1=Color.fromARGB(255, 87, 118, 251);
          playerColorStatus2=Color.fromARGB(255, 99, 99, 215);
          botColorStatus1=Color.fromARGB(255, 226, 86, 0);
          botColorStatus2=Color.fromARGB(255, 254, 0, 97);
          if(playerWinChecker()){
            playerwin();
          }else{
            playerScored();
          }
          break;
        case 1:
          botIcon=Icons.crop_portrait;
          botColorStatus1=Color.fromARGB(255, 60, 63, 65);
          botColorStatus2=Color.fromARGB(255, 60, 63, 65);
          playerColorStatus1=Color.fromARGB(255, 60, 63, 65);
          playerColorStatus2=Color.fromARGB(255, 60, 63, 65);
          break;
        case 2:
          botIcon=Icons.content_cut;
          score-=1;
          botColorStatus1=Color.fromARGB(255, 87, 118, 251);
          botColorStatus2=Color.fromARGB(255, 99, 99, 215);
          playerColorStatus1=Color.fromARGB(255, 226, 86, 0);
          playerColorStatus2=Color.fromARGB(255, 254, 0, 97);
          break;
      }
    });
  }
  _actionInput3(){
    setState(() {
      botVal=random.nextInt(3);
      playerIcon=Icons.content_cut;
      switch(botVal){
        case 0:
          botIcon=Icons.filter_hdr;
          score-=1;
          botColorStatus1=Color.fromARGB(255, 87, 118, 251);
          botColorStatus2=Color.fromARGB(255, 99, 99, 215);
          playerColorStatus1=Color.fromARGB(255, 226, 86, 0);
          playerColorStatus2=Color.fromARGB(255, 254, 0, 97);
          break;
        case 1:
          botIcon=Icons.crop_portrait;
          score+=5;
          playerColorStatus1=Color.fromARGB(255, 87, 118, 251);
          playerColorStatus2=Color.fromARGB(255, 99, 99, 215);
          botColorStatus1=Color.fromARGB(255, 226, 86, 0);
          botColorStatus2=Color.fromARGB(255, 254, 0, 97);
          if(playerWinChecker()){
            playerwin();
          }else{
            playerScored();
          }
          break;
        case 2:
          botIcon=Icons.content_cut;
          botColorStatus1=Color.fromARGB(255, 60, 63, 65);
          botColorStatus2=Color.fromARGB(255, 60, 63, 65);
          playerColorStatus1=Color.fromARGB(255, 60, 63, 65);
          playerColorStatus2=Color.fromARGB(255, 60, 63, 65);
          break;
      }
    });
  }
  var darkMode=false;
  var X=Icons.brightness_2;
  var bgColor=Color.fromARGB(255, 255, 255, 255);
  var sdBgColor=Color.fromARGB(255, 230, 239, 253);
  var txtColor=Color.fromARGB(255, 48, 48, 48);
  var txtStyle=TextStyle(color: Color.fromARGB(255, 48, 48, 48),);
  var color1=Color.fromARGB(255, 0, 176, 240);
  var color2=Color.fromARGB(255, 0, 229, 240);
  var color11=Color.fromARGB(255, 226, 86, 0);
  var color12=Color.fromARGB(255, 254, 0, 97);
  var color21=Color.fromARGB(255, 87, 118, 251);
  var color22=Color.fromARGB(255, 99, 99, 215);
  var color31=Color.fromARGB(255, 222, 143, 0);
  var color32=Color.fromARGB(255, 242, 127, 0);
  var botColorStatus1=Color.fromARGB(255, 60, 63, 65);
  var botColorStatus2=Color.fromARGB(255, 60, 63, 65);
  var playerColorStatus1=Color.fromARGB(255, 60, 63, 65);
  var playerColorStatus2=Color.fromARGB(255, 60, 63, 65);
  var score=0;
  var playerName='Guun';
  var playerNameController=TextEditingController();
  var playerIcon=Icons.account_circle;
  var botIcon=Icons.adb;
  final random=new Random();
  var botVal;
  var userVal;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Container(
          height: 30,
          width: 180,
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),gradient: LinearGradient(colors: [color1,color2])),
          child: Text(widget.appName,
            textAlign: TextAlign.center,
            style: TextStyle(color: bgColor,fontSize: 18.5),
          ),
        ),
        elevation: 0.0,
        backgroundColor: bgColor,
        actions:<Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 15, 10, 15),
            width: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [color1,color2]),
              borderRadius: BorderRadius.circular(20),
            ),
            //padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            child: GestureDetector(
              onTap: darkHandle,
              child: Icon(Icons.brightness_2,color:bgColor,size: 15,),
            ),
          ),

        ]
      ),
      body: Center(
        child:Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: playerInit,
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 7.5, 0.0),
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10, 10.0),
                    decoration: BoxDecoration(
                      color: sdBgColor,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Player name ',
                              style: TextStyle(
                                  fontSize: 20,
                                  color:txtColor,
                                  fontFamily: 'Product',
                              ),
                            ),
                            Text('$playerName',
                              style: TextStyle(
                                  fontSize: 30,
                                  color:txtColor
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,

                          children: <Widget>[
                            Text('Score',
                              style: TextStyle(
                                  fontSize: 20,
                                  color:txtColor
                              ),
                            ),
                            Text('$score',
                              style: TextStyle(
                                  fontSize: 20,
                                  color:txtColor
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 200.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: 100,
                                width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [playerColorStatus1,playerColorStatus2]),
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Icon(playerIcon,color: bgColor,size: 65,),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [botColorStatus1,botColorStatus2]),
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Icon(botIcon,color: bgColor,size: 65,),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: _actionInput1,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.0, 15, 10, 15),
                            width: 70,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [color11,color12]),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('Rock',style: TextStyle(color:  Color.fromARGB(255, 255, 255, 255)),),
                          ),
                        ),
                        GestureDetector(
                          onTap: _actionInput2,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.0, 15, 10, 15),
                            width: 70,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [color21,color22]),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('Paper',style: TextStyle(color:  Color.fromARGB(255, 255, 255, 255)),),
                          ),
                        ),
                        GestureDetector(
                          onTap: _actionInput3,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.0, 15, 10, 15),
                            width: 70,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [color31,color32]),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('Scissors',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ]
          ),
        ),
      ),
    );
  }
}