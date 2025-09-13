import 'dart:ui';
import 'package:behooo/model/catgory___.dart';
import 'package:behooo/widget/catgory_item.dart';

import '../widget/dart_catgory_meals.dart';
import 'text_style.dart';
import 'package:flutter/material.dart';

class homescrean extends StatefulWidget {
  const homescrean({super.key});

  @override
  State<homescrean> createState() => _homescreanState();
}

class _homescreanState extends State<homescrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: Text(
            "My Restruant",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return catgore_item(category: categories[index]);
        },
      ),
    );
  }
}
