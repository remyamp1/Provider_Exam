import 'package:counter_provider/Count_Provide.dart';
import 'package:counter_provider/firstScreen.dart';
import 'package:flutter/material.dart';
class Secondscreen extends StatefulWidget {
  @override
  State<Secondscreen> createState()=> _SecondscreenState();
}
class _SecondscreenState extends State <Secondscreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        backgroundColor: Colors.green,
        
      ),
      body: Center(child: Text("Total count is:${CountProvide().count.length}")),
    );
  }
}