import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/view/widgets/custom_filed.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: Column(
          children: [
            const Text(
              "Sign Up.",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            CustomFiled(hintText: "name"),
            SizedBox(height: 15),
            CustomFiled(hintText: "email"),
            SizedBox(height: 15),
            CustomFiled(hintText: "password"),
          ],
        ),
      ),
    );
  }
}
