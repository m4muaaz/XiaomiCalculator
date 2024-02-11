import 'package:flutter/material.dart';
import 'package:micalculator/buttons.dart';
import 'package:micalculator/constants.dart';
class AreaScreen extends StatefulWidget {
  final String uinput='';
  static const  id2='AreaScreen';

  const AreaScreen({Key? key}) : super(key: key);

  @override
  State<AreaScreen> createState() => _AreaScreenState();
}
String uinput='';
String ans='';
class _AreaScreenState extends State<AreaScreen> {String input='';

  List<String> items=<String> [
    '1',
    '2',
    '3',
  ];
  String dropdownvalue='1';
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(

          backgroundColor: Colors.black,
          title: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 100),
            child: Text('AREA',style: TextStyle(color: Colors.white),),

          ),

        ),
        body: Column(
          children: [
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 35,top: 10),
                  child: DropdownButton<String>(
                    onChanged: (String ? newValue){
                      dropdownvalue=newValue!;
                      setState(() {

                      });
                    },
                    dropdownColor: Colors.black,
                    iconDisabledColor: Colors.white,
                    iconEnabledColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    value: dropdownvalue,
                    items: items.map<DropdownMenuItem<String>>(
                        (String value){
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );

                        },
                    ).toList(),


                  ),
                ),
                const SizedBox(width: 250,),
                Text(uinput.toString(), style:  TextStyle(color: Colors.white),),
          ],
        ),
            const SizedBox(height: 10,),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 35,top: 10),
                  child: DropdownButton<String>(
                    onChanged: (String ? newValue){
                      dropdownvalue=newValue!;
                      setState(() {

                      });
                    },
                    dropdownColor: Colors.black,
                    iconDisabledColor: Colors.white,
                    iconEnabledColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    value: dropdownvalue,
                    items: items.map<DropdownMenuItem<String>>(
                          (String value){
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );

                      },
                    ).toList(),


                  ),
                ),
                const SizedBox(width: 250,),

              ],
            ),
            const SizedBox(height: 185.4,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
               children: [
                 ButtoN(text: '7', clr: Colors.white, onPress: (){
                   uinput='7';

                   setState(() {

                   });

                 }),
                 ButtoN(text: '8', clr: Colors.white, onPress: (){  uinput='8';

                 setState(() {

                 });}),
                 ButtoN(text: '9', clr: Colors.white, onPress: (){}),
Column(
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 40,top: 20),
      child: Button4(OnPress: (){uinput=''; setState(() {

      });}, title: 'AC'),
    ),

  ],
)

               ],
           ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,),
              child: Row(
                children: [
                  ButtoN(text: '4', clr: Colors.white, onPress: (){}),
                  ButtoN(text: '5', clr: Colors.white, onPress: (){}),
                  ButtoN(text: '6', clr: Colors.white, onPress: (){}),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: Row(
                children: [
                  ButtoN(text: '1', clr: Colors.white, onPress: (){}),
                  ButtoN(text: '2', clr: Colors.white, onPress: (){}),
                  ButtoN(text: '3', clr: Colors.white, onPress: (){}),
                  Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 40,top: 20),
                        child: Button5(OnPress: (){}, title: const Icon(Icons.backspace_outlined, color: orange,))
                      )
                    ],
                  )
                ],
              ),
            ),
             Row(
              children: [
                const SizedBox(width: 110,),
                ButtoN(text: '0', clr: Colors.white, onPress: (){}),


              ],
            ),

      ]),
    ));
  }
}