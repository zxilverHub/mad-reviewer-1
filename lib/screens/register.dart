import 'package:flutter/material.dart';
import 'package:review__1/screens/homapage.dart';
import 'package:review__1/screens/loginpage.dart';
import 'package:review__1/screens/signup.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isInLogIn = true;

  var usernameController = TextEditingController();
  var passowrdController = TextEditingController();

  void manageRegistration() {
    if (usernameController.text == "" || passowrdController.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Please provide neccessary inputs",
          ),
        ),
      );
      return;
    }

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => HomePage(
          username: usernameController.text,
          password: passowrdController.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          appBar: AppBar(
            leading: null,
            title: Text(isInLogIn ? "Log in" : "Sign up"),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isInLogIn = !isInLogIn;
                    });
                  },
                  child: Text(
                    isInLogIn ? "Sign up" : "Log in",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              isInLogIn
                  ? LogInPage(
                      usernameController: usernameController,
                      passwordController: passowrdController,
                    )
                  : SignUpPage(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 182, 36, 25),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(8, 16, 8, 16)),
                onPressed: () {
                  manageRegistration();
                },
                child: Text(
                  isInLogIn ? "Log in" : "Sign up",
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
