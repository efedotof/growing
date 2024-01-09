// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonalDataAdapter extends TypeAdapter<PersonalData> {
  @override
  final int typeId = 0;

  @override
  PersonalData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PersonalData()
      ..name = fields[0] as String
      ..age = fields[1] as String
      ..gender = fields[2] as String
      ..heigth = fields[3] as String
      ..weigth = fields[4] as String;
  }

  @override
  void write(BinaryWriter writer, PersonalData obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.gender)
      ..writeByte(3)
      ..write(obj.heigth)
      ..writeByte(4)
      ..write(obj.weigth);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonalDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
