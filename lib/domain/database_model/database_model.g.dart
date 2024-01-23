// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EmployeeModelDataAdapter extends TypeAdapter<EmployeeModelData> {
  @override
  final int typeId = 0;

  @override
  EmployeeModelData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EmployeeModelData(
      id: fields[0] as int?,
      employeeName: fields[1] as String?,
      role: fields[2] as String?,
      joinDate: fields[3] as String?,
      resignDate: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, EmployeeModelData obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.employeeName)
      ..writeByte(2)
      ..write(obj.role)
      ..writeByte(3)
      ..write(obj.joinDate)
      ..writeByte(4)
      ..write(obj.resignDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmployeeModelDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
