import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  LogInPage(
      {super.key,
      required this.passwordController,
      required this.usernameController});

  final usernameController;
  final passwordController;

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool isPassVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('../assets/images/logo.jpg'),
          const SizedBox(height: 16),
          TextField(
            controller: widget.usernameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Username"),
                hintText: "Username",
                icon: Icon(Icons.email)),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: widget.passwordController,
            obscureText: !isPassVisible,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              label: const Text("Password"),
              hintText: "Password",
              icon: const Icon(Icons.lock),
              suffix: IconButton(
                onPressed: () {
                  setState(() {
                    isPassVisible = !isPassVisible;
                  });
                },
                icon: Icon(
                  isPassVisible ? Icons.visibility : Icons.visibility_off,
                  size: 18,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
