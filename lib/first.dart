import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/next.dart';
import 'package:tutorial/second.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  String mytext = "Hello Guys";

  void _changeText(){
    setState(() {
      if(mytext.startsWith("H")) {
        mytext = "Welcome to My App";
      }
      else{
        mytext = "Hello Guys";
      }
    });
  }

  Widget _bodywidget(){
    return Container(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          children: [
            Text(mytext),
            FloatingActionButton(
                child: Text("Click"),
                onPressed:_changeText,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("First Page"),
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _bodywidget(),
          
          // ========================Next-Button================================
          NextButton(context, (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
          })
        ],
      ),
    );
  }
}
