import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  final Function(int) onChangedStep;
  const AuthScreen({Key? key, required this.onChangedStep}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  final RegExp emailRegex =
      RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
  //"^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$"
//r'^[a-z0-9\._-]+@[a-a0-9\._-]+\.[a-z]+'
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            RichText(
              text: TextSpan(
                text: 'Everyonne has\n'.toUpperCase(),
                style: const TextStyle(color: Colors.black, fontSize: 30.0),
                children: [
                  TextSpan(
                    text: 'knowledge\n'.toUpperCase(),
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'to share.'.toLowerCase()),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'It all starts here.',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text('Enter your email'),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    onChanged: (value) => setState(() => _email = value),
                    validator: ((value) => value == null ||
                            value.isEmpty ||
                            !emailRegex.hasMatch(value)
                        ? 'please enter a valid email'
                        : null),
                    decoration: InputDecoration(
                        hintText: 'Ex: john.doe@domain.tld',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    onPressed: !emailRegex.hasMatch(_email)
                        ? null
                        : () {
                            if (_formKey.currentState!.validate()) {
                              print(_email);
                              widget.onChangedStep(1);
                            }
                          },
                    child: Text(
                      'continue'.toUpperCase(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
