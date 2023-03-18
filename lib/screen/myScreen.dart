import 'package:flutter/material.dart';

class myScreen extends StatelessWidget {
  const myScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 21, 15, 89),
        child: Center(
          child: Container(
            height: 200.0,
            width: 350.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.amberAccent,
                width: 5.0,
              )
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "MIHA",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.amberAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "INSTITUTE",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.amberAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}