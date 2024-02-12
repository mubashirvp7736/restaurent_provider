import 'package:flutter/material.dart';
import 'package:restaurentmenu/model/order_model.dart';
import 'package:restaurentmenu/services/order_services.dart';

class PersonData extends ChangeNotifier{

List<OrderFood>personList=[];

RestaurentService dbService=RestaurentService();

Future getDataPerson()async{
  personList=await dbService.getOrder();
  notifyListeners();
}

Future<void>addPerson(OrderFood value)async{
await dbService.AddOrder(value);
getDataPerson();
notifyListeners();
}

Future deleteOrder(int index)async{
  await dbService.deleteOrder(index);
  getDataPerson();
  notifyListeners();
}

}