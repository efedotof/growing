
import 'package:hive/hive.dart';

part 'personal_data.g.dart';

@HiveType(typeId: 0)
class PersonalData {
  @HiveField(0)
  late String name;
  @HiveField(1)
  late String age ;
  @HiveField(2)
  late String gender;
  @HiveField(3)
  late String heigth;
  @HiveField(4)
  late String weigth;
}
