part of 'userModel.dart';



class UserModalPersonalData {
  static void setName(UserModel userModel,String names){
    userModel.name = names;
    userModel.notifyListeners();
  }
  static void setAge(UserModel userModel,String ages){
    userModel.age = ages;
    userModel.notifyListeners();
  }
  static void setGender(UserModel userModel,String genders){
    userModel.gender = genders;
    userModel.notifyListeners();
  }
  static void setHeigth(UserModel userModel,String heigths){
    userModel.heigth = heigths;
    userModel.notifyListeners();
  }
  static void setWeigth(UserModel userModel,String weigths){
    userModel.weigth = weigths;
    userModel.notifyListeners();
  } 

  static void allSets(UserModel userModel,names, ages, genders,heigths, weigths) async {
    setName(userModel, names);
    setAge(userModel,ages);
    setGender(userModel, genders);
    setHeigth(userModel, heigths);
    setWeigth(userModel,weigths);

  }

}