import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({Key? key}) : super(key: key);

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {

  int _value = 1;
  Color color1 = Color.fromARGB(255, 247, 4, 239);
  Color color2 =  Color(0xFF00c6ff);

  void change(){
    setState(() {
      if(_value == 1){
        color1 = Color.fromARGB(255, 247, 4, 239);
        color2 =  Color(0xFF00c6ff);
      }
      else{
        color1 =  Color(0xFF00c6ff);
        color2 = Color.fromARGB(255, 247, 4, 239);
      }
    }
   );
  }

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight*screenWidth)/20000;

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: screenHeight*0.076,
            width: screenWidth*0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0,),
              gradient: LinearGradient(
                colors: [
                 color1,
                 color2,
                ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
               ),
            ),
            child: Center(
              child: Container(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth*0.03),
                      height: screenHeight*0.065,
                      width: screenWidth*0.93,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0,),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Join as a Traveler",
                            style: TextStyle(
                              fontSize: area*(1.1),
                            ),
                          ),
                          GFRadio(
                            size: area*(1.5),
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                                   setState(() {
                                  _value = value as int;
                                  change();
                               }
                              );
                            },
                            inactiveIcon: null,
                            inactiveBorderColor: Color(0xFF00c6ff),
                            activeBorderColor: Color.fromARGB(255, 247, 4, 239),
                            radioColor: Color.fromARGB(255, 247, 4, 239),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
                SizedBox(height: screenHeight*0.01,),
                Container(
                  height: screenHeight*0.076,
            width: screenWidth*0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0,),
              gradient: LinearGradient(
                colors: [
                 color2,
                 color1,
                ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
               ),
            ),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth*0.03),
                      height: screenHeight*0.065,
                      width: screenWidth*0.93,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0,)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Join as a Travel Buddy",
                            style: TextStyle(
                              fontSize: area*(1.1),
                            ),
                          ),
                          GFRadio(
                            size: area*(1.5),
                            value: 2,
                            groupValue: _value,
                            onChanged: (value) {
                                   setState(() {
                                  _value = value as int;
                                  change();
                               }
                              );
                            },
                            inactiveIcon: null,
                            inactiveBorderColor:Color(0xFF00c6ff),
                            activeBorderColor:Color.fromARGB(255, 247, 4, 239),
                            radioColor: Color.fromARGB(255, 247, 4, 239),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}