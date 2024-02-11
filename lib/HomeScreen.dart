import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micalculator/Area.dart';
import 'package:micalculator/BMI.dart';
import 'package:micalculator/Data.dart';
import 'package:micalculator/buttons.dart';
import 'package:micalculator/constants.dart';
import 'package:math_expressions/math_expressions.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const id ='HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
String userinput='';
String answer='';
class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(

              backgroundColor: Colors.black,
              toolbarHeight: 30,

              bottom: const TabBar(

                indicatorColor: Colors.black,
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                unselectedLabelColor: Colors.grey,
                labelColor: orange,
                tabs:  [

                  PopupMenuItem(child: Icon(FontAwesomeIcons.downLeftAndUpRightToCenter, size: 25,)
                  ),
                  Tab(child: Icon(Icons.calculate ,size: 25,),),
                  Tab(child: Icon(Icons.category_sharp ,size: 25,),),
                  Tab(child: Icon(FontAwesomeIcons.sackDollar,size: 25,),),
                  PopupMenuItem(child: Icon(Icons.more_vert_outlined,size: 25,))
                  // Tab(child: Icon(Icons.more_vert_outlined ,size: 25,),),
                ],

              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(

                scrollDirection: Axis.horizontal,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width,
                  ),
                  child: TabBarView(
                    children: [
                      const Tab(child: Icon(FontAwesomeIcons.downLeftAndUpRightToCenter, color: Colors.orange,size: 25,),),
                      Tab(child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [

                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(userinput.toString(), style:const TextStyle(fontSize: 40,color: Colors.white),)),
                                const SizedBox(height: 15,),
                                Text(answer.toString(), style:const TextStyle(fontSize: 30,color: Colors.white),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 7.5),
                            child: Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [

                                      ButtoN(text: 'AC',
                                          onPress: (){
                                            userinput='';
                                            answer='';
                                            setState(() {

                                            });
                                          }

                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: ButtoN(text: 'DEL', onPress: (){
                                          userinput=userinput.substring(0,userinput.length-1);
                                          setState(() {

                                          });
                                        }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: ButtoN(text: '%', onPress: (){
                                          userinput+='%';
                                          setState(() {

                                          });
                                        }),
                                      ),
                                      ButtoN(text: '/', onPress: (){
                                        userinput+='/';
                                        setState(() {

                                        });
                                      }),
                                    ],
                                  ),
                                  Row(
                                    children: [

                                      ButtoN(text: '7',clr: Colors.white, onPress: (){
                                        userinput+='7';
                                        setState(() {

                                        });
                                      }),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: ButtoN(text: '8',clr: Colors.white, onPress: (){
                                          userinput+='8';
                                          setState(() {

                                          });
                                        }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 19),
                                        child: ButtoN(text: '9',clr: Colors.white, onPress: (){
                                          userinput+='9';
                                          setState(() {

                                          });
                                        }),
                                      ),
                                      ButtoN(text: 'x', onPress: (){
                                        userinput+='x';

                                        setState(() {

                                        });
                                      }),
                                    ],
                                  ),
                                  Row(
                                    children: [

                                      ButtoN(text: '4',clr: Colors.white, onPress: (){
                                        userinput+='4';
                                        setState(() {

                                        });
                                      }),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: ButtoN(text: '5',clr: Colors.white, onPress: (){
                                          userinput+='5';
                                          setState(() {

                                          });
                                        }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 19),
                                        child: ButtoN(text: '6',clr: Colors.white, onPress: (){
                                          userinput+='6';
                                          setState(() {

                                          });
                                        }),
                                      ),
                                      ButtoN(text: '-', onPress: (){
                                        userinput+='-';
                                        setState(() {

                                        });
                                      }),
                                    ],
                                  ),
                                  Row(
                                    children: [

                                      ButtoN(text: '1',clr: Colors.white, onPress: (){
                                        userinput+='1';
                                        setState(() {

                                        });
                                      }),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: ButtoN(text: '2',clr: Colors.white, onPress: (){
                                          userinput+='2';
                                          setState(() {

                                          });
                                        }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 17),
                                        child: ButtoN(text: '3',clr: Colors.white, onPress: (){
                                          userinput+='3';
                                          setState(() {

                                          });
                                        }),
                                      ),
                                      ButtoN(text: '+', onPress: (){
                                        userinput+='+';
                                        setState(() {

                                        });
                                      }),
                                    ],
                                  ),
                                  Row(
                                    children: [

                                      ButtoN(text: '->', onPress: (){
                                        setState(() {

                                        });
                                      }),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: ButtoN(text: '0',clr: Colors.white, onPress: (){
                                          userinput+='0';
                                          setState(() {

                                          });
                                        }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 19),
                                        child: ButtoN(text: '.', clr: Colors.white,onPress: (){
                                          userinput+='.';
                                          setState(() {

                                          });
                                        }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 20,left: 9),
                                        child: ButtoN2(clr: Colors.white, OnPress: (){
                                          equalpress();
                                          setState(() {

                                          });
                                        }),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                      ),
                      Tab(child: Column(
                        children: [Row(
                          children: [
                            const SizedBox(width: 70, height: 150,),
                            Button3(
                              icn:const Icon(FontAwesomeIcons.chartArea, size: 34,color: Colors.grey,), title: 'Area',OnPressed: (){

                              Navigator.pushNamed(context, AreaScreen.id2);
                              setState(() {

                              });
                            } ,
                            ),
                            const SizedBox(width: 80,),
                            Button3(icn:const Icon(Icons.monitor_weight_outlined, size: 34,color: Colors.grey,), title: 'BMI',OnPressed: (){

                              Navigator.pushNamed(context, BMI.id);
                              setState(() {

                              });
                            }),
                            const SizedBox(width: 85,),
                            Button3(icn:const Icon(FontAwesomeIcons.listOl, size: 34,color: Colors.grey,), title: 'Data',OnPressed: (){

                              Navigator.pushNamed(context, Data.id);
                              setState(() {

                              });
                            }),
                          ],
                        ),
                          Row(
                            children: [
                              const SizedBox(width: 60, height: 150,),
                              Button3(icn:const Icon(Icons.discount_outlined, size: 34,color: Colors.grey,), title: 'Discount',OnPressed: (){

                                Navigator.pushNamed(context, AreaScreen.id2);
                                setState(() {

                                });
                              }),
                              const SizedBox(width: 65,),
                              Button3(icn:const Icon(FontAwesomeIcons.rulerHorizontal, size: 34,color: Colors.grey,), title: 'Length',OnPressed: (){

                                Navigator.pushNamed(context, AreaScreen.id2);
                                setState(() {

                                });
                              }),
                              const SizedBox(width: 80,),
                              Button3(icn:const Icon(Icons.scale_outlined, size: 34,color: Colors.grey,), title: 'Mass',OnPressed: (){

                                Navigator.pushNamed(context, AreaScreen.id2);
                                setState(() {

                                });
                              }),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 55, height: 150,),
                              Button3(icn:const Icon(Icons.numbers, size: 34,color: Colors.grey,), title: 'Numbers',OnPressed: (){

                                Navigator.pushNamed(context, AreaScreen.id2);
                                setState(() {

                                });
                              }),
                              const SizedBox(width: 70,),
                              Button3(icn:const Icon(Icons.speed, size: 34,color: Colors.grey,), title: 'Speed',OnPressed: (){

                                Navigator.pushNamed(context, AreaScreen.id2);
                                setState(() {

                                });
                              }),
                              const SizedBox(width: 55,),
                              Button3(icn:const Icon(Icons.thermostat_outlined, size: 34,color: Colors.grey,), title: 'Temperature',OnPressed: (){

                                Navigator.pushNamed(context, AreaScreen.id2);
                                setState(() {

                                });
                              }),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 65, height: 150,),
                              Button3(icn:const Icon(Icons.access_alarm, size: 34,color: Colors.grey,), title: 'Time',OnPressed: (){

                                Navigator.pushNamed(context, AreaScreen.id2);
                                setState(() {

                                });
                              }),
                              const SizedBox(width: 80,),
                              Button3(icn:const Icon(FontAwesomeIcons.cube, size: 34,color: Colors.grey,), title: 'Volume',OnPressed: (){

                                Navigator.pushNamed(context, AreaScreen.id2);
                                setState(() {

                                });
                              }),
                              const SizedBox(width: 85,),

                            ],
                          ),
                        ],
                      )),
                      Tab(child: Column(
                        children: [
                          const SizedBox(height: 50,),
                          Padding(
                            padding: const EdgeInsets.only(right: 250),
                            child: Button3(icn: const Icon(FontAwesomeIcons.bitcoin,color: Colors.white,size: 34,), title: 'Currency',OnPressed: (){

                              Navigator.pushNamed(context, AreaScreen.id2);
                              setState(() {

                              });
                            }),
                          ),
                        ],
                      ) ),
                      //     Tab(child: Icon(Icons.more_vert_outlined , color: Colors.orange,size: 25,),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


void equalpress(){
  String finaluserinput=userinput;
  finaluserinput =userinput.replaceAll('x', '*');
  Parser p = Parser();
  Expression expression = p.parse(finaluserinput);
  ContextModel contextModel = ContextModel();
  double eval=expression.evaluate(EvaluationType.REAL, contextModel);
  answer=eval.toString();
}