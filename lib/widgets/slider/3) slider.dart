import 'package:flutter/material.dart';

class SliderSmoothColorPage extends StatefulWidget {
  @override
  _SliderSmoothColorPageState createState() => _SliderSmoothColorPageState();
}

class _SliderSmoothColorPageState extends State<SliderSmoothColorPage> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    Color? getColorFromValue(double value) {
      return Color.lerp(Colors.red, Colors.green, value);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Color Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selected Value: $_value',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Slider(
              value: _value,
              min: 0.0,
              max: 1.0,
              divisions: 10,
              onChanged: (double value) {
                setState(() {
                  _value = value;
                });
              },
              activeColor: Colors.blue,
            ),
          ],
        ),
      ),
      backgroundColor: getColorFromValue(_value),
    );
  }
}

