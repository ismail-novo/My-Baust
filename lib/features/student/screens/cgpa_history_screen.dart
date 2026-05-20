import 'package:flutter/material.dart';

class CgpaHistoryScreen extends StatelessWidget {

  const CgpaHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("CGPA History"),
      ),

      body: const Center(
        child: Text("Previous Semester CGPA"),
      ),
    );
  }
}