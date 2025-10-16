import 'package:flutter/material.dart';

void main(){
  runApp(SingleChildExample());
}

class SingleChildExample extends StatelessWidget{
  const SingleChildExample({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Single child layout example"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text('hello flutter',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}