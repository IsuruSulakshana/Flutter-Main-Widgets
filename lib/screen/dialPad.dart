import 'package:flutter/material.dart';
class DialPad extends StatefulWidget {
  const DialPad({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DialPadState createState() => _DialPadState();
}

class _DialPadState extends State<DialPad> {
  String _phoneNumber = '';

  void _onKeyPressed(String number) {
    setState(() {
      _phoneNumber += number;
    });
  }

  void _clearNumber(String number) {
    setState(() {
      _phoneNumber = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dial Pad'),
        backgroundColor: Color.fromARGB(255, 13, 56, 58),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 130.0),
              Center(
                child: Text(
                  _phoneNumber,
                  style: const TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 171, 239, 238),
                    ),
                ),
              ),
            const SizedBox(height: 40),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 24, right: 24),
              children: [
                DialKey(
                  number: '1',
                  letters: '',
                  onKeyPressed: _onKeyPressed,
                ),
                DialKey(
                  number: '2',
                  letters: 'ABC',
                  onKeyPressed: _onKeyPressed,
                ),
                DialKey(
                  number: '3',
                  letters: 'DEF',
                  onKeyPressed: _onKeyPressed,
                ),
                DialKey(
                  number: '4',
                  letters: 'GHI',
                  onKeyPressed: _onKeyPressed,
                ),
                DialKey(
                  number: '5',
                  letters: 'JKL',
                  onKeyPressed: _onKeyPressed,
                ),
                DialKey(
                  number: '6',
                  letters: 'MNO',
                  onKeyPressed: _onKeyPressed,
                ),
                DialKey(
                  number: '7',
                  letters: 'PQRS',
                  onKeyPressed: _onKeyPressed,
                ),
                DialKey(
                  number: '8',
                  letters: 'TUV',
                  onKeyPressed: _onKeyPressed,
                ),
                DialKey(
                  number: '9',
                  letters: 'WXYZ',
                  onKeyPressed: _onKeyPressed,
                ),
                DialKey(
                  number: '*',
                  letters: '',
                  onKeyPressed: _onKeyPressed,
                ),
                DialKey(
                  number: '0',
                  letters: '',
                  onKeyPressed: _onKeyPressed,
                ),
                DialKey(
                  number: '#',
                  letters: '',
                  onKeyPressed: _clearNumber,
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.call,
                size: 50.0,
                color: Color.fromARGB(255, 22, 96, 100),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 11, 43, 45),
    );
  }
}

class DialKey extends StatelessWidget {
  final String number;
  final String letters;
  final ValueChanged<String> onKeyPressed;
  
  const DialKey({Key? key, 
  required this.number, 
  required this.letters, 
  required this.onKeyPressed}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 18, 79, 86),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: FloatingActionButton(
          onPressed: () {
            if (onKeyPressed != null) {
              onKeyPressed(number);
            }
          },
          backgroundColor: Color.fromARGB(255, 16, 85, 86).withOpacity(0.5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  letters,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 24, 183, 188),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}