import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight*screenWidth)/20000;

    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 30.0),
      child: Container(
        width: screenWidth-35,
        height: 100,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.arrow_back_ios,
              size: 25,
              color: Colors.cyan,
            ),
            Text(
              "Slider",
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 25.0
              ),
            ),
            Icon(
              Icons.menu,
              size: 25.0,
              color: Color.fromARGB(255, 228, 9, 221),
            ),
          ]
        ),
      ),
    );
  }
}