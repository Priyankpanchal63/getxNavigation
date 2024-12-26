import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getbavi/screeenone.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Navigation'),
      ),
      body: Column(
        children: [
          Container(
            height: Get.height*.2,
            color: Colors.red,
            child:Center(child: Text('Priyank'),) ,
          ),
          Column(
            children: [
              ListTile(
                title: Text('message'.tr),
                subtitle: Text('name'.tr),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  OutlinedButton(onPressed: (){Get.updateLocale(Locale('en','US'));}, child: Text('English')),SizedBox(width: 5,),
                  OutlinedButton(onPressed: (){Get.updateLocale(Locale('hd','Ind'));}, child: Text('Hindi')),
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
