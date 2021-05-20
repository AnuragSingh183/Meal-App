import 'package:flutter/material.dart';
import 'package:food/cat_meals_screen.dart';

// ignore: camel_case_types
class categoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  void changescreen(BuildContext ctx){
    Navigator.of(ctx).pushNamed("/categories",arguments: {
      "id":id,"title":title
    });
  }

    categoryItem(this.id,this.title,this.color);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=>  changescreen(context) ,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),//should be equal to that of the radius of cantainer.
      child: Container(
        
        
        padding: const EdgeInsets.all(15),
        child: Text(title,
        style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(gradient: LinearGradient(colors: [
          color.withOpacity(0.7),
          color,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15)
        ),
        
      ),
    );
  }
}