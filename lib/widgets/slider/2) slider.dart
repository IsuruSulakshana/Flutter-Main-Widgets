import 'package:flutter/material.dart';

class SliderColorPage extends StatefulWidget {
  @override
  _SliderColorPageState createState() => _SliderColorPageState();
}

class _SliderColorPageState extends State<SliderColorPage> {
  double _value = 0.0;

  void _updateValue(double newValue) {
    setState(() {
      _value = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.white;
    Color textColor = Colors.black;

    if (_value > 0.5) {
      backgroundColor = Colors.blue;
      textColor = Colors.white;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Color Example'),
      ),
      body: Container(
        color: backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selected Value: $_value',
                style: TextStyle(fontSize: 20, color: textColor),
              ),
              SizedBox(height: 20),
              Slider(
                value: _value,
                min: 0.0,
                max: 1.0,
                divisions: 10,
                label: '$_value',
                onChanged: _updateValue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
