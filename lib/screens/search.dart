import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(//content ko safe jagah pe dikhati hai
        child: Container(//iske andar sab ayega(a box is made on screen)
          // child: Text('Hello'),
          // color: Color.fromRGBO(94, 37, 93, 100),
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black,
                Color.fromRGBO(74, 29, 73, 100)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)//here we are defining from where to where should gradient go
          ),


        )
    );
  }
}
