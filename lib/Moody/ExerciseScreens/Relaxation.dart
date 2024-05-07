import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz1/Moody/Moody_Widgets/MoodyContainer.dart';

class Relaxation extends StatefulWidget {
  static const String routeName = 'Relaxation';

  @override
  State<Relaxation> createState() => _RelaxationState();
}

class _RelaxationState extends State<Relaxation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xFFF9F5FF),
            title: Text('Relaxation', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          ),
          body:ListView(
            children: [
              MoodyContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),
              MoodyContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),
              MoodyContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),
            ],
          ) ,
    ));
  }
}
