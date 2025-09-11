import 'package:flutter/material.dart';

main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
   Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: homeee());
  }
}

class homeee extends StatefulWidget {
  homeee({super.key});

  @override
  State<homeee> createState() => _homeeeState();
}

class _homeeeState extends State<homeee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("hellow my broo", style: TextStyle(fontSize: 50)),

      ),
      body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container(
            width: double.infinity,
            color: Colors.blue,
            child: Center(child: Text("lkfklfdskfs",style: TextStyle(fontSize: 30,color: Colors.black),)),
          ))
        ],
      ),
    );
  }
}
