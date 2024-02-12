import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurentmenu/controller/add_order.dart';
import 'package:restaurentmenu/controller/db_provider.dart';
import 'package:restaurentmenu/model/order_model.dart';
import 'package:restaurentmenu/view/add_order.dart';
import 'package:hive_flutter/hive_flutter.dart';
Future <void> main()async {
WidgetsFlutterBinding.ensureInitialized();
await Hive.initFlutter();
if(!Hive.isAdapterRegistered(OrderFoodAdapter().typeId)){
  Hive.registerAdapter(OrderFoodAdapter());
}

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>FoodAdd()),
        ChangeNotifierProvider(create: (context) =>PersonData() ,)
      ],
      child:const MaterialApp(
        home:AddFood() ,
      ),
    );
  }}