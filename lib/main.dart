import 'package:flutter/material.dart';
import 'package:write_me_your_voice/SpeechScreen.dart';

void main() {
  runApp(const write_me_your_voice());
}

class write_me_your_voice extends StatelessWidget {
  const write_me_your_voice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Speech_Screen(),
      debugShowCheckedModeBanner: false,
      title: "Write Me Your Voice",
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 150, 101, 141),
      ),
    );
  }
}
