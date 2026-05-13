import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_pallete.dart';
import 'package:flutter_application_1/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:flutter_application_1/features/auth/view/widgets/custom_filed.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: Form(
          key: formKey,
          child: Column(
            children: [
              const Text(
                "Log In.",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              CustomFiled(
                name: "Email",
                hintText: "email",
                controller: emailController,
              ),
              SizedBox(height: 15),
              CustomFiled(
                name: "Password",
                hintText: "password",
                controller: passwordController,
                isPassword: true,
              ),
              SizedBox(height: 15),
              AuthGradientButton(buttonText: "Log In", onPressed: () {}),
              SizedBox(height: 15),
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Pallete.subtitleText),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        color: Pallete.gradient2,
                        fontWeight: FontWeight.bold,
                      ),
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
