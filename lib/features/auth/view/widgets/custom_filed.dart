import 'package:flutter/material.dart';

class CustomFiled extends StatefulWidget {
  final String hintText;
  const CustomFiled({super.key, required this.hintText});

  @override
  State<CustomFiled> createState() => _CustomFiledState();
}

class _CustomFiledState extends State<CustomFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: widget.hintText),
    );
  }
}
