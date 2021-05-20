import 'package:flutter/material.dart';
import "./meals.dart";

import './catitem.dart';


// ignore: camel_case_types
class categoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MEALS"),),
      body: GridView(
        
        padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES.map((catdata) =>
      categoryItem(
        catdata.id,
      catdata.title, 
       catdata.color),
      
      ).toList(),
       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent:200,
      childAspectRatio: 3/2,
      
      crossAxisSpacing: 20,
      mainAxisSpacing: 20),
    ) 
    );
  }
}