import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getbavi/homescreen.dart';
import 'package:getbavi/screenTwo.dart';
class ScreenOne extends StatefulWidget {
  var  name;
  ScreenOne({Key?key,this.name}):super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx first screen'+Get.arguments[1]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: (){Get.to(ScreenTwo());}, child: Text('Next Screen'),),
          )
        ],
      ),
    );
  }
}
