// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderFoodAdapter extends TypeAdapter<OrderFood> {
  @override
  final int typeId = 1;

  @override
  OrderFood read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OrderFood(
      name: fields[1] as String,
      foodCategorie: fields[2] as String,
      number: fields[3] as String,
      time: fields[4] as String,
    )..index = fields[0] as int?;
  }

  @override
  void write(BinaryWriter writer, OrderFood obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.index)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.foodCategorie)
      ..writeByte(3)
      ..write(obj.number)
      ..writeByte(4)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderFoodAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
