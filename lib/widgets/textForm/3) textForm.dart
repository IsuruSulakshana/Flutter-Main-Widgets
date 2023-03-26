import 'package:flutter/material.dart';

class PopTextForm extends StatefulWidget {
  const PopTextForm({Key? key}) : super(key: key);

  @override
  _PopTextFormState createState() => _PopTextFormState();
}

class _PopTextFormState extends State<PopTextForm> {
  final _formKey = GlobalKey<FormState>();
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();

  bool _isSubmitting = false;

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _controller1,
              decoration: InputDecoration(
                labelText: 'Field 1',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter Field 1';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _controller2,
              decoration: InputDecoration(
                labelText: 'Field 2',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter Field 2';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _controller3,
              decoration: InputDecoration(
                labelText: 'Field 3',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter Field 3';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            Center(
              child: _isSubmitting
                  ? CircularProgressIndicator()
                  : RaisedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            _isSubmitting = true;
                          });
                          // Simulate data processing
                          await Future.delayed(Duration(seconds: 2));
                          setState(() {
                            _isSubmitting = false;
                          });
                          // Show success popup
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 64,
                              ),
                              content: Text('Your data has been submitted!'),
                            ),
                          );
                        }
                      },
                      child: Text('Submit'),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
