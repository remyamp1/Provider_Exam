import 'package:counter_provider/firstScreen.dart';
import 'package:flutter/material.dart';
class CountProvide  extends ChangeNotifier{
  List count=[1,2,3,4,5];

void addnumber(){
count.add(count.last+1);
notifyListeners();
  
}

  
}
