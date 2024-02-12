import 'package:hive_flutter/adapters.dart';
part 'order_model.g.dart';

@HiveType(typeId: 1)
class OrderFood{

@HiveField(0)
int?index;

@HiveField(1)
final String name;

@HiveField(2)
final String foodCategorie;

@HiveField(3)
final String number;

@HiveField(4)
final String time;


OrderFood({required this.name,
required this.foodCategorie,
required this.number,
required this.time});
}