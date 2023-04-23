import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({Key? key}) : super(key: key);

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {

  int _value = 1;
  Color color1 = Color.fromARGB(255, 60, 82, 84);
  Color color2 =  Color(0xFF00c6ff);
  bool touch = true;

  void change(){
    setState(() {
      if(_value == 1){
        color1 = Color.fromARGB(255, 60, 77, 78);
        color2 =  Color(0xFF00c6ff);
        touch = true;
      }
      else{
        color1 =  Color(0xFF00c6ff);
        color2 = Color.fromARGB(255, 50, 60, 63);
        touch = false;
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
                        color: Color.fromARGB(255, 29, 81, 83),
                        borderRadius: BorderRadius.circular(20.0,),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Yes I Can",
                            style: TextStyle(
                              fontSize: touch? area*(1.23):area*(0.87),
                              color: Colors.white,
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
                            inactiveBorderColor: Color.fromARGB(255, 8, 240, 39),
                            activeBorderColor: Color.fromARGB(255, 247, 4, 239),
                            radioColor: Color.fromARGB(255, 16, 86, 105),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
                SizedBox(height: screenHeight*0.02,),
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
                        color: Color.fromARGB(255, 29, 81, 83),
                        borderRadius: BorderRadius.circular(20.0,)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "No I Can't",
                            style: TextStyle(
                              fontSize: touch ? area*(0.87):area*(1.23),
                              color: Colors.white,
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
                            inactiveBorderColor:Color.fromARGB(255, 212, 2, 184),
                            activeBorderColor:Color.fromARGB(255, 247, 4, 239),
                            radioColor: Color.fromARGB(255, 4, 70, 83),
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