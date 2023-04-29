// import 'package:flutter/material.dart';

// enum Options { option1, option2, option3 }

// class MyWidget extends StatefulWidget {
//   @override
//   _MyWidgetState createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   Options _selectedOption = Options.option1;

//   void _handleOptionChange(Options option) {
//     setState(() {
//       _selectedOption = option;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         RadioListTile<Options>(
//           title: const Text('Option 1'),
//           value: Options.option1,
//           groupValue: _selectedOption,
//           onChanged: _handleOptionChange,
//         ),
//         RadioListTile<Options>(
//           title: const Text('Option 2'),
//           value: Options.option2,
//           groupValue: _selectedOption,
//           onChanged: _handleOptionChange,
//         ),
//         RadioListTile<Options>(
//           title: const Text('Option 3'),
//           value: Options.option3,
//           groupValue: _selectedOption,
//           onChanged: _handleOptionChange,
//         ),
//       ],
//     );
//   }
// }
