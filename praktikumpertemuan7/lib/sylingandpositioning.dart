import 'package:flutter/material.dart';

void main(){
  runApp(StylingPositioningExample());
}

class StylingPositioningExample extends StatelessWidget{
  const StylingPositioningExample({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Styling dan Positioning"),),
        body: Stack(
          children: [
            Container(color: Colors.lightBlueAccent,),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: Text('tengah Layar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),)
          ],
        ),
      ),
    );
  }
}