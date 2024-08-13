import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'special_button.dart';

class AddPropertyScreen extends StatefulWidget {
  const AddPropertyScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PropertyFormState createState() => _PropertyFormState();
}

class _PropertyFormState extends State<AddPropertyScreen> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String address = '';
  String about = '';

  void _resetFields() {
    setState(() {
      name = '';
      address = '';
      about = '';
      _formKey.currentState?.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                maxLength: 25,
                initialValue: name,
                onSaved: (value) {
                  name = value ?? '';
                },
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                    labelText: 'Address',
                    labelStyle: TextStyle(color: Colors.black),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
                maxLength: 200,
                initialValue: address,
                onSaved: (value) {
                  address = value ?? '';
                },
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter an address';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'About (Optional)'),
                maxLength: 200,
                initialValue: about,
                onSaved: (value) {
                  about = value ?? '';
                },
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 230),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: _resetFields,
                      child: const Text(
                        'Reset',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    SpecialButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          _formKey.currentState?.save();
                          // Handle form submission logic here
                          if (kDebugMode) {
                            print('Name: $name');
                            print('Address: $address');
                            print('About: $about');
                          }
                        }
                      },
                      text: 'Save',
                      backgroundColor: Colors.green,
                      height: 50,
                      width: 100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
