import 'package:counter_provider/Count_Provide.dart';
import 'package:counter_provider/secondScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Count extends StatefulWidget{
  @override
  State<Count> createState()=> _CountState();
}
class _CountState extends State <Count>{
  
  @override
  Widget build(BuildContext context){
   final counter=Provider.of<CountProvide>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>Secondscreen()));
          }, icon: Icon(Icons.arrow_right_alt_sharp))
        ],
      ),
      body: Column(
        children: [
          Text("Total count is:${counter.count.length}"),
          Expanded(child:ListView.builder(
            itemCount: counter.count.length,
            itemBuilder: (context,index){
            return Container(
              child: Text("${counter.count[index]}"),
            );
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
counter.addnumber();
      },child: Icon(Icons.add),),
    );
  }
}