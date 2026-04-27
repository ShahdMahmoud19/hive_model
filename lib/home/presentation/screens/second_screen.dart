import 'package:flutter/material.dart';
import 'package:hive_model/home/data/models/hive_model.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key, required this.hiveModel});
   final HiveModel hiveModel;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
         // child:ListTile(
          //  title: Center(
              child: Container(
                height: 400,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.hiveModel.getData()[index].email,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text(widget.hiveModel.getData()[index].name,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text(widget.hiveModel.getData()[index].age.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text(widget.hiveModel.getData()[index].salary.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
      ),
       // )
              
               
    );



      
   // );
  }
}