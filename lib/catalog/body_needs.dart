import 'package:hive/hive.dart';

part 'body_needs.g.dart';

@HiveType(typeId: 2)
class BodyNeeds {
  @HiveField(0)
  late String water ;
  @HiveField(1)
  late String personalcare;
  @HiveField(2)
  late String steps;
  @HiveField(3)
  late String productivity;

}
