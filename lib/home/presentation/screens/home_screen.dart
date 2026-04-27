import 'package:flutter/material.dart';
import 'package:hive_model/home/data/models/hive_model.dart';
import 'package:hive_model/home/data/models/model.dart';
import 'package:hive_model/home/presentation/screens/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController salarycontroller = TextEditingController();
  final HiveModel hiveModel = HiveModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter name',
                  border: OutlineInputBorder(),
                ),
                controller: namecontroller,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter age',
                  border: OutlineInputBorder(),
                ),
                controller: agecontroller,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter email',
                  border: OutlineInputBorder(),
                ),
                controller: emailcontroller,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter salary',
                  border: OutlineInputBorder(),
                ),
                controller: salarycontroller,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  hiveModel.addData(
                    Model(
                      name: namecontroller.text,
                      age: int.parse(agecontroller.text),
                      email: emailcontroller.text,
                      salary: int.parse(salarycontroller.text),
                    ),
                  );
                  namecontroller.clear();
                  agecontroller.clear();
                  emailcontroller.clear();
                  salarycontroller.clear();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(hiveModel: hiveModel),
                    ),
                  );
                },
                child: const Text('go'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
