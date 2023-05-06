import 'package:flutter/material.dart';
class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  bool _showBottomSheet = false;

  void _toggleBottomSheet() {
    setState(() {
      _showBottomSheet = !_showBottomSheet;
    });
  }

  void _removeBottomSheet() {
    setState(() {
      _showBottomSheet = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Bottom Sheet'),
          onPressed: _toggleBottomSheet,
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
      bottomSheet: _showBottomSheet
          ? Container(
            color: Colors.deepPurple,
              height: 400.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      'This is a bottom sheet!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0,),
                  ElevatedButton(
                    child: Text('Remove Bottom Sheet'),
                    onPressed: _removeBottomSheet,
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
