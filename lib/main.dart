import 'package:behooo/screans/home_screan.dart';
import 'package:behooo/screans/meal_screan.dart';
import 'package:flutter/material.dart';

main(){
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        "meal_screan":(context)=>meal_screan()
      },
      home: homescrean(),
    );
  }
}
