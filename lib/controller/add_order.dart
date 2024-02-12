import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurentmenu/controller/db_provider.dart';
import 'package:restaurentmenu/model/order_model.dart';
import 'package:restaurentmenu/view/home_list.dart';

class FoodAdd extends ChangeNotifier{

final name=TextEditingController();
final foodCategorie=TextEditingController();
final  number=TextEditingController();
final time=TextEditingController();
String? selectedFood;
List<String>  foodItems=["mandhi",'biriyani',"gheeRice","Burger","Meals","porotta","BeefFry","Chapathi"];


void selectedItem(String value){

  selectedFood=value;
}
Future<void>onAddData(context)async{
 final personName=name.text.trim();
 final foodItem=selectedFood??'';
 final mobileNumer=number.text.trim();
 final orderTime=time.text.trim();

final orderPerson=OrderFood(
name: personName,
foodCategorie: foodItem,
number: mobileNumer,
time:orderTime);
Provider.of<PersonData>(context,listen: false).addPerson(orderPerson);
Navigator.push(context, MaterialPageRoute(builder: (context) =>const ShowList(),));
notifyListeners();
}

}