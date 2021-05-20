import 'package:flutter/material.dart';
import 'package:food/cat.dart';
import 'package:food/cat_meals_screen.dart';
import './cat_screen.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "mealsApp",
      theme: ThemeData(
     
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
          // ignore: deprecated_member_use
          body1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),

          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          title: TextStyle(
            fontSize: 24,
            fontFamily: "RoboCondensed"
          )
        )
      ),
      //home: categoriesScreen(),
      routes: {
        "/":(_)=>categoriesScreen(),  //equivalent to home:categories()
        "/categories": (_)=>CategoryMeals()
        //"categoriesMeals.routeName":(_)=>......//can use the class name
      },
    );
  }
}

