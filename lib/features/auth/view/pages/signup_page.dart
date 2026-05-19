import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_pallete.dart';
import 'package:flutter_application_1/features/auth/repositories/auth_remote_repository.dart';
import 'package:flutter_application_1/features/auth/view/pages/login_page.dart';
import 'package:flutter_application_1/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:flutter_application_1/features/auth/view/widgets/custom_filed.dart';
import 'package:fpdart/fpdart.dart' hide State;

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
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
                "Sign Up.",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              CustomFiled(
                name: "Name",
                hintText: "name",
                controller: nameController,
              ),
              SizedBox(height: 15),
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
              AuthGradientButton(
                buttonText: "Sign Up",
                onPressed: () async {
                  final res = await AuthRemoteRepository().signup(
                    name: nameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                  );

                  switch (res) {
                    case Left(value: final failure):
                      print(failure.message);

                    case Right(value: final user):
                      print(user.email);
                  }
                },
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogInPage()),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(color: Pallete.subtitleText),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: TextStyle(
                          color: Pallete.gradient2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
