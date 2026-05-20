import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String hint;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),

      child: TextField(
        controller: controller,

        decoration: InputDecoration(
          hintText: hint,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}