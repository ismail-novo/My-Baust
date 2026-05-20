import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:my_baust/firebase_options.dart';

import 'features/auth/screens/role_selection_screen.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyCampus());
}

class MyCampus extends StatelessWidget {
  const MyCampus({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Campus',

      theme: ThemeData(
        useMaterial3: true,
      ),

      home: const RoleSelectionScreen(),
    );
  }
}