import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget createGrid(){
    return GridView.count(
      children: [],//here we will show different categories.(cols and rows)
    )

  }
  Widget createAppBar(String message){
    return AppBar(
      backgroundColor: Colors.transparent,//appbar is transparent
      elevation: 0.0,
      title: new Padding(
        padding: EdgeInsets.only(left: 50),
        child: Text(message),

      ),

      actions:[ Padding(
    padding: EdgeInsets.only(right: 10),
    child: Icon(Icons.settings),
      )
    ]

    );
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(//content ko safe jagah pe dikhati hai
      child: Container(//iske andar sab ayega(a box is made on screen)8
        child: Column(
          children: [//widget list
          createAppBar('Good morning'), sizedBox(height: 5,
            )
        ],),//inside one column there are are soo many children(good morning, playlists etc)
        decoration: BoxDecoration(//decoration is optional
          gradient: LinearGradient(colors: [
            Colors.black,
            Color.fromRGBO(74, 29, 73, 100)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)//here we are defining from where to where should gradient go
        ),//we can add stop property above like stops: [0.1, 0.3], it will automatically set the colours there.


      )
    );
  }
}

