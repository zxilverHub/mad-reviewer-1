import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Widget getTextField(lbl, {bool isObs = false}) {
    return TextField(
      obscureText: isObs,
      decoration: InputDecoration(
          border: OutlineInputBorder(), label: Text(lbl), hintText: lbl),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            getTextField("Last name"),
            const SizedBox(height: 16),
            getTextField("First name"),
            const SizedBox(height: 16),
            getTextField("Middle name"),
            const SizedBox(height: 16),
            getTextField("Username"),
            const SizedBox(height: 16),
            getTextField("Password", isObs: true),
            const SizedBox(height: 16),
            getTextField("Password", isObs: true),
            getTextField("Password", isObs: true),
            getTextField("Password", isObs: true),
            getTextField("Password", isObs: true),
            getTextField("Password", isObs: true),
            getTextField("Password", isObs: true),
            getTextField("Password", isObs: true),
            getTextField("Password", isObs: true),
            getTextField("Password", isObs: true),
            getTextField("Password", isObs: true),
            getTextField("Password", isObs: true),
            getTextField("Password", isObs: true),
            getTextField("Password", isObs: true),
          ],
        ),
      ),
    );
  }
}
