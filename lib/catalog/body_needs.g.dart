// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_needs.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BodyNeedsAdapter extends TypeAdapter<BodyNeeds> {
  @override
  final int typeId = 2;

  @override
  BodyNeeds read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BodyNeeds()
      ..water = fields[0] as String
      ..personalcare = fields[1] as String
      ..steps = fields[2] as String
      ..productivity = fields[3] as String;
  }

  @override
  void write(BinaryWriter writer, BodyNeeds obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.water)
      ..writeByte(1)
      ..write(obj.personalcare)
      ..writeByte(2)
      ..write(obj.steps)
      ..writeByte(3)
      ..write(obj.productivity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BodyNeedsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
