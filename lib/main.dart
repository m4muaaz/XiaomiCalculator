import 'package:flutter/material.dart';
import 'package:micalculator/BMI.dart';
import 'package:micalculator/Data.dart';
import 'Area.dart';
import 'HomeScreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes : {
        HomeScreen.id : (context)=>const HomeScreen(

        ),
        AreaScreen.id2:(context)=>const AreaScreen(),
        BMI.id:(context)=>const BMI(),
        Data.id:(context)=>const Data(),
      },

    );}
}