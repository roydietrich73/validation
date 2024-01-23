import 'package:flutter/material.dart';
import 'package:validation/validierung/email_validation.dart';
import 'package:validation/validierung/password_validation.dart';
import 'package:validation/validierung/username_validation.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formular mit Validierung'),
        ),
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}


class _MyFormState extends State<MyForm> {
  final key = GlobalKey<FormState>();
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: Form(
            key: key,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                   textAlign: TextAlign.center,
                   controller: controller1,
                   decoration: const InputDecoration(labelText: 'E-Mail'),
                   validator: validEmail,
                  ),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: controller2,
                    decoration: const InputDecoration(labelText: 'Password'),
                    validator: validPasswordLength,
                    ),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: controller3,
                    decoration: const InputDecoration(labelText: 'Username'),
                    validator: validUsername,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed:(){
                        if (key.currentState!.validate()) {}
                    },
                child: const Text('Überprüfen'),
                    ),
                ],
              ),
            ),
          ),
      )));
      }
      
    }

