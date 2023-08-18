
import 'package:flutter/material.dart';

class HangManGame extends StatefulWidget {
  const HangManGame({Key? key}) : super(key: key);

  @override
  State<HangManGame> createState() => _HangManGameState();
}

class _HangManGameState extends State<HangManGame> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Image.asset('images/hang.png',height: 290,),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildAboveContainer('F',Colors.deepPurple.shade900),
                  buildAboveContainer('L',Colors.deepPurple.shade900),
                  buildAboveContainer('U',Colors.deepPurple.shade900),
                  buildAboveContainer('T',Colors.deepPurple.shade900),
                  buildAboveContainer('T',Colors.deepPurple.shade900),
                  buildAboveContainer('E',Colors.deepPurple.shade900),
                  buildAboveContainer('R',Colors.deepPurple.shade900)
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

  Container buildAboveContainer(String text,Color clr) {
    return Container(
      width: 43,
      height: 53,
      decoration: BoxDecoration(
          color: clr,
      ),
      child: Center(
        child: TextButton(
          onPressed: (){},
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
