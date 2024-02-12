import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurentmenu/controller/add_order.dart';
class AddFood extends StatelessWidget {
  const AddFood({super.key});

  @override
  Widget build(BuildContext context) {
    final Fprovider=Provider.of<FoodAdd>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title:const Text('Add Menu'),
      ),
      body: Column(
        children: [
        TextFormField(
        controller: Fprovider.name,
        maxLength: 20,
        decoration:const InputDecoration(border: OutlineInputBorder()),
        ),
       const SizedBox(height: 5,),
        Consumer<FoodAdd>(
          builder: (context, value, child) => 
           DropdownButtonFormField(
            value: value.selectedFood,
            items: value.foodItems.map((String values) {
            return  DropdownMenuItem(
                value: values,
                child:Text(values)
                 );
            }).toList(), 
            onChanged: (neWvalue) =>
            value.selectedItem(neWvalue.toString()) ,),
        ),
       const SizedBox(height: 5,),
         TextFormField(
          controller: Fprovider.time,
          keyboardType: TextInputType.datetime,
          decoration:const InputDecoration(border: OutlineInputBorder()),
         ),
       const  SizedBox(height: 5,),
         TextFormField(
          controller: Fprovider.number,
          keyboardType: TextInputType.number,
          decoration:const InputDecoration(border: OutlineInputBorder()),
         ),
         SizedBox(height: 5,),
         ElevatedButton(onPressed: (){
        Provider.of<FoodAdd>(context,listen: false).onAddData(context);
         }, child:const Text('SUBMIT'))
        ],
      ),
    );
  }
}