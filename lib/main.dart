import 'package:flutter/material.dart';

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                 controller: controller1,
                 decoration: const InputDecoration(labelText: 'Feld1'),
                 validator: (value) => validateInput(value),
                ),
                TextFormField(
                  controller: controller2,
                  decoration: const InputDecoration(labelText: 'Feld2'),
                  validator: (value) => validateInput(value),
                  ),
                  TextFormField(
                  controller: controller3,
                  decoration: const InputDecoration(labelText: 'Feld3'),
                  validator: (value) => validateInput(value),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed:(){
                      if (key.currentState!.validate()) {}
                  },
              child: const Text('Absenden'),
                  ),
              ],
            ),
          ),
      )));
      }
      bool isValidInput(String? input) {
       return input != null && input.isNotEmpty;
       }
       String? validateInput(String? input) {
        if (isValidInput(input)) {
          return null;
        }else{
          return 'dieses Feld ist erforderlich';
        }
       }
    }

