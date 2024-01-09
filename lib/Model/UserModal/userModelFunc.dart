
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

    return index;
  }

  static bool getBool(String name, String age, String weight, String height, String gender) {
    return checkFields(name, age, weight, height, gender);
  }


  static void getDataToLocalStore(BuildContext context, UserModel userModel) async {
      var box = await Hive.openBox('PersonalData');
      String name = box.get('name') ?? '';
      String age = box.get('age') ?? '';
      String gender = box.get('gender') ?? '';
      String heigth = box.get('heigth') ?? '';
      String weigth = box.get('weigth') ?? '';
      if(name.isEmpty &&
          age.isEmpty &&
          gender.isEmpty &&
          heigth.isEmpty &&
          weigth.isEmpty
          ){
        log('empty');
        AutoRouter.of(context).push(const StartRoute());
      }else{
        log('notempty');
        userModel.setName(name);
        userModel.setAge(age);
        userModel.setGender(gender);
        userModel.setHeigth(heigth);
        userModel.setWeigth(weigth);
        AutoRouter.of(context).push(const HomeRoute());
    }
    userModel.notifyListeners();


  }




  static void goHomePage(BuildContext context,UserModel userModel) async {
    if(userModel.nextHomePage){
       var box = await Hive.openBox('PersonalData');
        box.put('name', userModel.name);
        box.put('age', userModel.age);
        box.put('gender', userModel.gender);
        box.put('heigth', userModel.heigth);
        box.put('weigth', userModel.weigth);
      AutoRouter.of(context).push(const HomeRoute()); 
    }
  }


  static void nextPageStartPage(BuildContext context,index, UserModel userModel, TabsRouter tabsRouter,){
    if(userModel.nextHomePage){
      goHomePage(context, userModel);
    }else{
      switch(index){
          case 0:
            tabsRouter.setActiveIndex(index);
          case 1:
              userModel.calcBMR();
              userModel.allSetgetbmr();
              tabsRouter.setActiveIndex(index);
          case 2:
            tabsRouter.setActiveIndex(index);
            userModel.nextHomePage = true;
            userModel.notifyListeners();
            log((userModel.nextHomePage).toString());
        }

    }
    
  }

  
}