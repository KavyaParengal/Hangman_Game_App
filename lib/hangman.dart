
import 'package:flutter/material.dart';

class HangManGame extends StatefulWidget {
  const HangManGame({Key? key}) : super(key: key);

  @override
  State<HangManGame> createState() => _HangManGameState();
}

class _HangManGameState extends State<HangManGame> {

  bool isHeadvisible=false;
  bool isBodyvisible=false;
  bool isLeftHandvisible=false;
  bool isLeftLegvisible=false;
  bool isRightHandvisible=false;
  bool isRightLegvisible=false;

  bool fVisible=false;
  bool lVisible=false;
  bool uVisible=false;
  bool tVisible=false;
  bool eVisible=false;
  bool rVisible=false;

  int trueCount=0;
  int falseCount=0;

  void displayText(String text){
    setState(() {

      if(trueCount==5){
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Game Over"),
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.black
              ),
              content: Text("You Win the Game"),
              actions: [
                TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Ok",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                ),),
                )],
            );
          },
        );
        reset();
      }
      else if(falseCount==6){
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Game Over"),
                titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.black
                ),
                content: Text("You Fail the Game"),
                actions: [
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text("Ok",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                  )],
              );
            },
        );
        reset();
      }
      else{
        if(text=='F'){
          trueCount++;
          fVisible=true;
        }
        else if(text=='L'){
          trueCount++;
          lVisible=true;
        }
        else if(text=='U'){
          trueCount++;
          uVisible=true;
        }
        else if(text=='T'){
          trueCount++;
          tVisible=true;
        }
        else if(text=='E'){
          trueCount++;
          eVisible=true;
        }
        else if(text=='R'){
          trueCount++;
          rVisible=true;
        }
        else{
          if(text=='A'||text=='B'||text=='C'||text=='D'||text=='G'||text=='H'||
              text=='I'||text=='J'||text=='K'||text=='M'||text=='N'||text=='O'||
              text=='P'||text=='Q'||text=='S'||text=='V'||text=='W'||text=='X'||text=='Y'||text=='Z'){
            falseCount++;
            if(isHeadvisible==false){
              isHeadvisible=true;
            }
            else if(isBodyvisible==false){
              isBodyvisible=true;
            }
            else if(isLeftHandvisible==false){
              isLeftHandvisible=true;
            }
            else if(isRightHandvisible==false){
              isRightHandvisible=true;
            }
            else if(isLeftLegvisible==false){
              isLeftLegvisible=true;
            }
            else if(isRightLegvisible==false){
              isRightLegvisible=true;
            }
          }
        }
      }

    });
  }

  void reset(){
    isHeadvisible=false;
    isBodyvisible=false;
    isLeftHandvisible=false;
    isLeftLegvisible=false;
    isRightHandvisible=false;
    isRightLegvisible=false;

    fVisible=false;
    lVisible=false;
    uVisible=false;
    tVisible=false;
    eVisible=false;
    rVisible=false;

    trueCount=0;
    falseCount=0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.deepPurple.shade100,Colors.deepPurple.shade600,Colors.deepPurple.shade600,Colors.deepPurple.shade600],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Stack(
                        children:[
                          Image.asset('images/hang.png',height: 290,),
                          Visibility(
                              visible: isHeadvisible,
                              child: Image.asset('images/head.png',height: 300,)
                          ),
                          Visibility(
                              visible: isBodyvisible,
                              child: Image.asset('images/body.png',height: 300,)
                          ),
                          Visibility(
                              visible: isLeftHandvisible,
                              child: Image.asset('images/la.png',height: 300,)
                          ),
                          Visibility(
                              visible: isRightHandvisible,
                              child: Image.asset('images/ra.png',height: 300,)
                          ),
                          Visibility(
                              visible: isLeftLegvisible,
                              child: Image.asset('images/ll.png',height: 300,)
                          ),
                          Visibility(
                              visible: isRightLegvisible,
                              child: Image.asset('images/rl.png',height: 300,)
                          ),
                        ]
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 18,right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildAboveContainer('F',Colors.deepPurple.shade900,fVisible),
                    buildAboveContainer('L',Colors.deepPurple.shade900,lVisible),
                    buildAboveContainer('U',Colors.deepPurple.shade900,uVisible),
                    buildAboveContainer('T',Colors.deepPurple.shade900,tVisible),
                    buildAboveContainer('T',Colors.deepPurple.shade900,tVisible),
                    buildAboveContainer('E',Colors.deepPurple.shade900,eVisible),
                    buildAboveContainer('R',Colors.deepPurple.shade900,rVisible)
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 28,right: 28),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildBelowContainer('A',Colors.deepPurple.shade900),
                        buildBelowContainer('B',Colors.deepPurple.shade900),
                        buildBelowContainer('C',Colors.deepPurple.shade900),
                        buildBelowContainer('D',Colors.deepPurple.shade900),
                        buildBelowContainer('E',Colors.deepPurple.shade900),
                        buildBelowContainer('F',Colors.deepPurple.shade900),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildBelowContainer('G',Colors.deepPurple.shade900),
                        buildBelowContainer('H',Colors.deepPurple.shade900),
                        buildBelowContainer('I',Colors.deepPurple.shade900),
                        buildBelowContainer('J',Colors.deepPurple.shade900),
                        buildBelowContainer('K',Colors.deepPurple.shade900),
                        buildBelowContainer('L',Colors.deepPurple.shade900),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildBelowContainer('M',Colors.deepPurple.shade900),
                        buildBelowContainer('N',Colors.deepPurple.shade900),
                        buildBelowContainer('O',Colors.deepPurple.shade900),
                        buildBelowContainer('P',Colors.deepPurple.shade900),
                        buildBelowContainer('Q',Colors.deepPurple.shade900),
                        buildBelowContainer('R',Colors.deepPurple.shade900),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildBelowContainer('S',Colors.deepPurple.shade900),
                        buildBelowContainer('T',Colors.deepPurple.shade900),
                        buildBelowContainer('U',Colors.deepPurple.shade900),
                        buildBelowContainer('V',Colors.deepPurple.shade900),
                        buildBelowContainer('W',Colors.deepPurple.shade900),
                        buildBelowContainer('X',Colors.deepPurple.shade900),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildBelowContainer('Y',Colors.deepPurple.shade900),
                        SizedBox(width: 5,),
                        buildBelowContainer('Z',Colors.deepPurple.shade900),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildBelowContainer(String text,Color clr) {
    return Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: clr,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: TextButton(
                    onPressed: (){
                      displayText(text);
                    },
                    child: Text(text,style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 27,
                      color: Colors.white
                    ),),
                  ),
                ),
              );
  }

  Container buildAboveContainer(String text,Color clr,bool visibility) {
    return Container(
      width: 43,
      height: 53,
      decoration: BoxDecoration(
          color: clr,
      ),
      child: Center(
        child: Visibility(
          visible: visibility,
          child: Text(text,style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 27,
              color: Colors.white
          ),),
        ),
      ),
    );
  }
}
