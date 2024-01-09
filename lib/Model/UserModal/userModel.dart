
import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../router/router.dart';
part 'userModelFunc.dart';
part 'userModalActivityLevel.dart';
part 'userModalHabits.dart';
part 'userModalPersonalData.dart';


class UserModel with ChangeNotifier {
  String name = '';
  String age = '';
  String gender = '';
  String heigth = '';
  String weigth = '';
  int index = 0;

  String water = '';
  String personalcare = '';
  String steps = '';
  String productivity = '';
  List<String> habitans = [];

  String bmr = '';
  String veryactive = '';
  String moderateactive = '';
  String lightactivity = '';
  String sedentary = '';

  String peak = '';
  String cardio = '';
  String fatburning = '';
  String warmup = '';


  bool nextHomePage = false;


  int drinkWater = 5000;
  int CountSteps = 10000;
  String hoursminSport = '12h 00min';
  String hoursminRead = '12h 00min';
  String hoursminSleep = '12h 00min';


  int witchdrawal = 0;


  void setWitchdrawal(){
    witchdrawal = (((drinkWater + CountSteps) / 2) /100).toInt();
    notifyListeners();
  }



  UserModel() {
    habitans = [
      water,
      personalcare,
      steps,
      productivity,
    ];
  }



  void getDataToLocalStore(BuildContext context,){
    UserModalFunction.getDataToLocalStore(context, this);
  }

  String getbmr(String item){
    return UserModalActivityLevel.getbmr(this, item);
  }

  void calcBMR(){
    UserModalActivityLevel.calculateBMR(this);
    log(bmr);
  }

  void allSetgetbmr(){
    UserModalActivityLevel.allSetgetbmr(this);
    UserModalActivityLevel.calcbpm(this);
  }

  void nextPageStartPage(BuildContext context,index, UserModel userModel, TabsRouter tabsRouter,){
    UserModalFunction.nextPageStartPage(context, index, userModel, tabsRouter);
  }


  void allSets(names, ages, genders,heigths, weigths){
    UserModalPersonalData.allSets(this, names, ages, genders, heigths, weigths);
  }

  void setWater(String waters){
   UserModalHabits.setWater(this, waters);
  }

  void setPersonalCare(String personalcares) {
    UserModalHabits.setPersonalCare(this, personalcares);
  }

  void setSteps(String stepss){
    UserModalHabits.setSteps(this, stepss);
  }

  void setProductivity(String productivitys){
    UserModalHabits.setProductivity(this, productivitys);
  }

  void setName(String names){
    UserModalPersonalData.setName(this, names);
  }
  void setAge(String ages){
    UserModalPersonalData.setAge(this, ages);
  }
  void setGender(String genders){
    UserModalPersonalData.setGender(this, genders);
  }
  void setHeigth(String heigths){
    UserModalPersonalData.setHeigth(this, heigths);
  }
  void setWeigth(String weigths){
    UserModalPersonalData.setWeigth(this, weigths);
  }

  bool getBool(){
    return UserModalFunction.getBool(name, age, weigth, heigth, gender);
  }

  int indexs(){
    index = UserModalFunction.calculateIndex(index, name, age, weigth, heigth, gender, water, personalcare, steps, productivity);
    log(index.toString());
    return index;
  }



}