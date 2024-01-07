part of 'userModel.dart';

class UserModalHabits{
  static void setWater(UserModel userModel, String waters){
    userModel.water = waters;
    userModel.habitans[0] = userModel.water;
    userModel.notifyListeners();
  }
  static void setPersonalCare(UserModel userModel,String personalcares) {
    List<String> arr = userModel.personalcare.split('\n');
    
    // Проверка наличия элемента в массиве
    if (!arr.contains(personalcares)) {
      userModel.personalcare += personalcares + '\n';
      userModel.habitans[1] = userModel.personalcare;
      
      userModel.notifyListeners();
    }
  }

  static void setSteps(UserModel userModel,String stepss){
    userModel.steps = stepss;
    userModel.habitans[2] = userModel.steps;
    userModel.notifyListeners();
  }
  static void setProductivity(UserModel userModel,String productivitys){
    List<String> arr = userModel.productivity.split('\n');
    
    // Проверка наличия элемента в массиве
    if (!arr.contains(productivitys)) {
      userModel.productivity += productivitys + '\n';
      userModel.habitans[3] = userModel.productivity;
    }
    userModel.notifyListeners();
  }



}