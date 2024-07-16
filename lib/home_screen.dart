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
          Card(
            child: ListTile(
              title: Text("getx Dialog alert"),
              subtitle: Text('getx subtitle alert'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete the item',
                  middleText: "are you sure you want's to delete it ",
                  titlePadding: EdgeInsets.all(30),
                  //textConfirm: 'yes',
                  //textCancel: 'no'
                    //for the custom
                  confirm: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('yes')),

                  cancel: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('no')),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("getx bottomSheet"),
              subtitle: Text('getx to change the theme'),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('ligth theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('dark theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        )
                      ],
                    ),
                  )

                );
              },
            ),
          )
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
