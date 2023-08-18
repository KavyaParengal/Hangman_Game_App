
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hangman/hangman.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HangManGame(),
    )
  );
}