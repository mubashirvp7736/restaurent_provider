import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurentmenu/controller/db_provider.dart';

class ShowList extends StatefulWidget {
  const ShowList({super.key});

  @override
  State<ShowList> createState() => _ShowListState();
}

class _ShowListState extends State<ShowList> {

  @override
  void initState() {
 Provider.of<PersonData>(context,listen: false).getDataPerson();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Order List'),
      ),
      body:
     Consumer<PersonData>(
       builder: (context, persondata, child){
        return ListView.builder(
       itemCount: persondata.personList.length,
       itemBuilder:(context, index) {
        final orderPerson=persondata.personList[index];
         return Card(
                child: ListTile(
                  title: Text(orderPerson.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(orderPerson.foodCategorie),
                      Text('Number: ${orderPerson.number}'),
                    ],
                  ),
                  trailing: Text(orderPerson.time),
                ),
              );
       },
       );
       }
         
        
         ,)
        
      
      );
    
  }
}