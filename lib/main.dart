import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/screens/app.dart';
import 'package:flutter/services.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));
  runApp(MaterialApp(
    title: 'Spotify Clone',
    debugShowCheckedModeBanner: false,//to remove debug banner
    home: const MyApp())); //connection to app.dart req
  //or CuppertinoApp()coming from flutter material imported. jo bhi widget daaloge it will be on top
}
//widget is a dart class


//MyApp