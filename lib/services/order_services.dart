import 'package:hive_flutter/adapters.dart';
import 'package:restaurentmenu/model/order_model.dart';

class RestaurentService{

 Future<List<OrderFood>>getOrder()async{
  final orederDb=await Hive.openBox<OrderFood>("orderfood");
  return orederDb.values.toList();
 } 

 // ignore: non_constant_identifier_names
 Future<void>AddOrder(OrderFood value)async{
  final orederDb=await Hive.openBox<OrderFood>("orderfood");
   await  orederDb.add(value);
 }
 Future<void>deleteOrder(int index)async{
 final orederDb=await Hive.openBox<OrderFood>("orderfood");
  await orederDb.delete(index);
 }
}