part of 'userModel.dart';

class UserModalActivityLevel {
  
  static void calculateBMR(UserModel userModel) {
    if (userModel.gender == 'Man') {
      userModel.bmr = ((10 * int.parse(userModel.weigth) + 6.25 * int.parse(userModel.heigth) - 5 * int.parse(userModel.age) + 5).toInt()).toString();
    } else {
      userModel.bmr = (((10 * int.parse(userModel.weigth) + (6.25 * int.parse(userModel.heigth) - 5 * int.parse(userModel.age)) - 161)).toInt()).toString();
    }
    userModel.notifyListeners();
  }
  



  static void allSetgetbmr(UserModel userModel){
    if(userModel.bmr.isNotEmpty){
       userModel.veryactive = ((int.parse(userModel.bmr) * 1.725).toInt()).toString();
       userModel.moderateactive = ((int.parse(userModel.bmr) * 1.55).toInt()).toString();
       userModel.lightactivity = ((int.parse(userModel.bmr) * 1.375).toInt()).toString();
       userModel.sedentary = ((int.parse(userModel.bmr) * 1.2).toInt()).toString();
    }
     userModel.notifyListeners();
  }

  static String getbmr(UserModel userModel,String item){
    switch(item){
      case 'Very active':
        return userModel.veryactive + ' kcal';
      case 'Moderate activity':
        return userModel.moderateactive + ' kcal';
      case 'Light activity':
        return userModel.lightactivity + ' kcal';
      case 'Sedentary':
        return userModel.sedentary + ' kcal';
      case 'Peak':
        return userModel.peak + ' BPM';
      case 'Cardio':
        return userModel.cardio + ' BPM';
      case 'Fat burning':
        return userModel.fatburning + ' BPM';
      case 'Warm-up':
        return userModel.warmup + ' BPM';
    }
    return '';

  }
  static void calcbpm(UserModel userModel){
    int maxheartrate = 220 - int.parse(userModel.age);
    userModel.peak = ((maxheartrate * 0.8).toInt()).toString();
    userModel.cardio = ((maxheartrate * 0.7).toInt()).toString();
    userModel.fatburning = ((maxheartrate * 0.6).toInt()).toString();
    userModel.warmup = ((maxheartrate * 0.5).toInt()).toString();
    userModel.notifyListeners();
  }


}