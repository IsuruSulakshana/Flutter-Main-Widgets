 import 'package:flutter/material.dart';
 class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: ElevatedButton(
            child: Text('BottomSheet'),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(25),
                    topStart: Radius.circular(25),
                  ),
                ),
                builder: (context) => Container(
                  padding: EdgeInsetsDirectional.only(
                    start: 20,
                    end: 20,
                    bottom: 30,
                    top: 8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 600,
                        child: PageView(
                          controller: controller,
                          children: <Widget>[
                            SingleChildScrollView(
                              child: Column( 
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(
                                  5,
                                  (index) => Container(
                                    height: 60,
                                    margin:
                                        EdgeInsetsDirectional.only(bottom: 10),
                                    width: double.infinity,
                                    color: Colors.yellow,
                                    child: Center(
                                      child: Text(
                                        'Widgets $index',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SingleChildScrollView( 
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(
                                   10, (index) => Container(
                                  height: 60,
                                  margin:
                                  EdgeInsetsDirectional.only(bottom: 10),
                                  width: double.infinity,
                                  color: Colors.yellow,
                                  child: Center(
                                    child: Text(
                                      'Widgets $index',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),),
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(
                                    12, (index) => Container(
                                  height: 60,
                                  margin:
                                  EdgeInsetsDirectional.only(bottom: 10),
                                  width: double.infinity,
                                  color: Colors.yellow,
                                  child: Center(
                                    child: Text(
                                      'Widgets $index',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}