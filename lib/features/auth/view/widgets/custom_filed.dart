import 'package:flutter/material.dart';

class CustomFiled extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;
  final String name;
  const CustomFiled({
    super.key,
    required this.name,
    required this.hintText,
    required this.controller,
    this.isPassword = false,
  });

  @override
  State<CustomFiled> createState() => _CustomFiledState();
}

class _CustomFiledState extends State<CustomFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword,
      decoration: InputDecoration(hintText: widget.hintText),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "Please enter ${widget.name}";
        }
        return null;
      },
    );
  }
}
