import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight*screenWidth)/20000;

return Container(
      height: screenHeight*0.05,
      width: screenWidth*0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color:const Color(0xFFFFFFFF),
        border: Border.all(
          color: Color.fromARGB(255, 229, 229, 229),
          width: 1.3,
        ),
      ),
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(screenWidth*0.01),
              height: area*(1.2),
              width: area*(1.2),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/google.png'),
                  fit: BoxFit.fill
                ),
              ), 
            ),
            Text(
              'Continue with Google',
              style: TextStyle(
                fontSize: area*(1.1),
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 85, 85, 85)
              ),
            ),
          ],
        ),
      ),
    );
  }
}