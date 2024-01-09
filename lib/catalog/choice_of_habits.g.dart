// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_of_habits.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChoiceOfHabitAdapter extends TypeAdapter<ChoiceOfHabit> {
  @override
  final int typeId = 1;

  @override
  ChoiceOfHabit read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChoiceOfHabit()
      ..bmr = fields[0] as String
      ..veryactive = fields[1] as String
      ..moderateactive = fields[2] as String
      ..lightactivity = fields[3] as String
      ..sedentary = fields[4] as String
      ..peak = fields[5] as String
      ..cardio = fields[6] as String
      ..fatburning = fields[7] as String
      ..warmup = fields[8] as String;
  }

  @override
  void write(BinaryWriter writer, ChoiceOfHabit obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.bmr)
      ..writeByte(1)
      ..write(obj.veryactive)
      ..writeByte(2)
      ..write(obj.moderateactive)
      ..writeByte(3)
      ..write(obj.lightactivity)
      ..writeByte(4)
      ..write(obj.sedentary)
      ..writeByte(5)
      ..write(obj.peak)
      ..writeByte(6)
      ..write(obj.cardio)
      ..writeByte(7)
      ..write(obj.fatburning)
      ..writeByte(8)
      ..write(obj.warmup);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChoiceOfHabitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
