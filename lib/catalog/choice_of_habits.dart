import 'package:hive/hive.dart';

part 'choice_of_habits.g.dart';

@HiveType(typeId: 1)
class ChoiceOfHabit {
  @HiveField(0)
  late String  bmr ;
  @HiveField(1)
  late String  veryactive ;
  @HiveField(2)
  late String  moderateactive ;
  @HiveField(3)
  late String  lightactivity ;
  @HiveField(4)
  late String  sedentary ;
  @HiveField(5)
  late String  peak ;
  @HiveField(6)
  late String  cardio ;
  @HiveField(7)
  late String  fatburning ;
  @HiveField(8)
  late String  warmup ;

}
