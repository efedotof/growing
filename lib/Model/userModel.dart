


import 'package:flutter/material.dart';

class UserModel with ChangeNotifier {
  String name = '';
  String age = '';
  String gender = '';
  String heigth = '';
  String weigth = '';
  int index = 0;

  void AllSets(names, ages, genders,heigths, weigths){
    setName(names);
    setAge(ages);
    setGender(genders);
    setHeigth(heigths);
    setWeigth(weigths);
  }



  void setName(String names){
    name = names;
    notifyListeners();
  }
  void setAge(String ages){
    age = ages;
    notifyListeners();
  }
  void setGender(String genders){
    gender = genders;
    notifyListeners();
  }
  void setHeigth(String heigths){
    heigth = heigths;
    notifyListeners();
  }
  void setWeigth(String weigths){
    weigth = weigths;
    notifyListeners();
  }

  bool getBool(){
    if(name.isNotEmpty &&
        age.isNotEmpty &&
        weigth.isNotEmpty &&
        heigth.isNotEmpty &&
        gender.isNotEmpty ){
      return true;
     }else{
        return false;
      }
  }

  int indexs(){
    if(name.isNotEmpty &&
        age.isNotEmpty &&
        weigth.isNotEmpty &&
        heigth.isNotEmpty &&
        gender.isNotEmpty ){
      index = 1;
      return index;
     }
     return 0;
  }



}