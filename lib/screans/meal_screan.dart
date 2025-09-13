import 'package:flutter/material.dart';

import '../model/meal.dart';
import '../widget/dart_catgory_meals.dart';


class meal_screan extends StatelessWidget {
  meal_screan({super.key});
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic> ;
    List<Meal> mealsfliter= meals.where(
        (value){
          return value.categoryNumber==data["id"];
        }
    ).toList();
    return  Scaffold(
      appBar: AppBar (
        backgroundColor: Colors.cyan,
        title: Center(child: Text(data ["id"],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey),)),
      ),

     body: ListView.builder(itemBuilder: (context,index){
       return Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Stack(
                 alignment: Alignment.centerLeft,
                 children:[

               Container(

                 padding: EdgeInsets.only(left: 160,top: 50),
                 width: double.infinity,
                 height: 150,
                 child: Text(mealsfliter[index].title),

                 decoration: BoxDecoration(
                   color: Colors.cyan,
                   borderRadius: BorderRadius.only(topRight: Radius.circular(20) )
                 ),
               ),
               Container(
                 width: 150,
                 height: 150,
                decoration: BoxDecoration(
                  image:DecorationImage(image: AssetImage(mealsfliter[index].imageUrl),
                      fit: BoxFit.fill),
                ),
               ),
             ]

             ),
           ),


         ],
       );
     },itemCount: mealsfliter.length,),
    );
  }
}
