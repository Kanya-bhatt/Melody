import 'package:melody/screens/home.dart';
import 'package:melody/screens/search.dart';
import 'package:melody/screens/yourlibrary.dart';
import 'package:melody/screens/signUp.dart';
import 'package:melody/screens/signIn.dart';
import 'package:flutter/material.dart';

//has stateful widget
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();//creates state, HERE DATA
}

class _MyAppState extends State<MyApp> {
  //we have separate tabs
  // ignore: non_constant_identifier_names
  final Tabs = [Home(email: '',), const Search(), const YourLibrary(), const SignUpPage(), const LoginPage()];
  int currentTabIndex = 0;//out of 0=>home, 1=> search, 2=> yourlibrary
  //UI design code goes inside build
  @override
  Widget build(BuildContext context) {

    return Scaffold(//like a page
      body: Tabs[currentTabIndex],
      backgroundColor: const Color.fromRGBO(164, 124, 177, 100), //94, 37, 93, 74, 29, 73
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(164, 124, 177, 100),
        currentIndex: currentTabIndex,
        onTap: (currentIndex){//whenever we click on it and will return a current index of our tab| changing current tab index
          // print("Current index is: $currentIndex");
          currentTabIndex = currentIndex;
          setState(() {//(re-rendering)only works on stateful, used so that whole build reloads after clicking on icons(home pe click kare to home khul jaye

          });
          },//this will help us change the page

          // iconSize: 48,
        selectedItemColor: Colors.white24,//change the colour of text in bottom navigation.
        unselectedItemColor: Colors.white,

        //selectedFontStyle also there.
        // backgroundColor: Colors.black12,
        items: const [//one item has - icon and text + color and items should have min 2
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),

              label: 'Home'),
          //3
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books, color: Colors.white),
              label: 'Your Library')
        ],
    ),//items ka object=> home, search and lib<= items


    );
  }
}
