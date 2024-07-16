import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx tutorial'),
      ),
      body: Column(
        children: [
          
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar(
            'Amit', 'I am trying to learn the state managemnet',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.lightBlue,
        colorText: Colors.white);
      }),
    );
  }
}
