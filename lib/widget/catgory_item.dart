import 'package:behooo/screans/meal_screan.dart';
import 'package:behooo/widget/dart_catgory_meals.dart';
import 'package:flutter/material.dart';
import 'package:behooo/model/catgory___.dart';
import '../screans/text_style.dart';
import '../screans/meal_screan.dart';

class catgore_item extends StatelessWidget {
  const catgore_item({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.fill,
            ),
          ),
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                 "meal_screan",arguments: {
                  "name" :category.name,
                  "id" : category.id
              }
                );
            },

            child: Container(
              width: double.infinity,
              height: 50,

              color: Colors.black45,
              child: Center(
                child: Text(category.name, style: textStyle.textstyle0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
