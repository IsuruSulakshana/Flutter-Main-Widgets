// import 'package:flutter/material.dart';
// import 'package:flutter_xlider/flutter_xlider.dart';

// class CurvedSliderPage extends StatefulWidget {
//   @override
//   _CurvedSliderPageState createState() => _CurvedSliderPageState();
// }

// class _CurvedSliderPageState extends State<CurvedSliderPage> {
//   double _value = 0.0;

//   void _updateValue(double newValue) {
//     setState(() {
//       _value = newValue;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Curved Slider Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Selected Value: $_value',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 20),
//             FlutterSlider(
//               values: [_value],
//               min: 0.0,
//               max: 100.0,
//               axis: Axis.horizontal,
//               trackBar: FlutterSliderTrackBar(
//                 inactiveTrackBar: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.grey,
//                 ),
//                 activeTrackBar: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.blue,
//                 ),
//               ),
//               handler: FlutterSliderHandler(
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.blue,
//                 ),
//                 child: Icon(
//                   Icons.circle,
//                   color: Colors.white,
//                   size: 20,
//                 ),
//               ),
//               onDragging: (handlerIndex, lowerValue, upperValue) {
//                 _updateValue(lowerValue);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
