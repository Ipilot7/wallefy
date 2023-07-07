// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 2;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      name: fields[0] as String?,
      passwordHash: fields[1] as String?,
      role: fields[2] as String?,
      branchId: fields[3] as int?,
      balance: fields[4] as bool?,
      username: fields[5] as String?,
      id: fields[6] as int?,
      token: fields[7] as String?,
      phone: fields[8] as int?,
      status: fields[9] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.passwordHash)
      ..writeByte(2)
      ..write(obj.role)
      ..writeByte(3)
      ..write(obj.branchId)
      ..writeByte(4)
      ..write(obj.balance)
      ..writeByte(5)
      ..write(obj.username)
      ..writeByte(6)
      ..write(obj.id)
      ..writeByte(7)
      ..write(obj.token)
      ..writeByte(8)
      ..write(obj.phone)
      ..writeByte(9)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
