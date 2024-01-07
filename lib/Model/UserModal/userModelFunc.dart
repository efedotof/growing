part of 'userModel.dart';

class UserModalFunction {

  static bool checkFields(String name, String age, String weight, String height, String gender) {
    return name.isNotEmpty && age.isNotEmpty && weight.isNotEmpty && height.isNotEmpty && gender.isNotEmpty;
  }

   static bool checkScreenTwo(String water, String personalcare, String steps, String productivity) {
    return water.isNotEmpty && personalcare.isNotEmpty && steps.isNotEmpty && productivity.isNotEmpty;
  }

  static int calculateIndex(int index, String name, String age, String weight, String height, String gender,String water, String personalcare, String steps, String productivity) {
      if (checkFields(name, age, weight, height, gender)) {
        index = 1;
      }

      if (checkFields(name, age, weight, height, gender) && checkScreenTwo(water,personalcare,steps,productivity)) {
        index = 2;
      }

      if(checkFields(name, age, weight, height, gender) && checkScreenTwo(water,personalcare,steps,productivity) && index == 2){
        index = 3;
      }


    return index;
  }

  static bool getBool(String name, String age, String weight, String height, String gender) {
    return checkFields(name, age, weight, height, gender);
  }
}