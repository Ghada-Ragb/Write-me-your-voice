import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class Speech_Screen extends StatefulWidget {
  const Speech_Screen({super.key});

  @override
  State<Speech_Screen> createState() => _Speech_ScreenState();
}

class _Speech_ScreenState extends State<Speech_Screen> {
  var text = "Hold the microphone and start speaking";
  var IsListening = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        endRadius: 80.0,
        animate: IsListening,
        duration: const Duration(milliseconds: 2000),
        glowColor: const Color.fromARGB(255, 177, 112, 166),
        repeat: true,
        repeatPauseDuration: const Duration(milliseconds: 100),
        showTwoGlows: true,
        child: GestureDetector(
          onTapDown: (details) {
            setState(() {
              IsListening = true;
            });
          },
          onTapUp: (details) {
            setState(() {
              IsListening = false;
            });
          },
          child: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 200, 140, 189),
            radius: 42,
            child: Icon(
              IsListening ? Icons.mic : Icons.mic_none,
              color: Colors.white,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 200, 140, 189),
        elevation: 0.0,
        title: const Text(
          "Write Me Your voice",
          style: TextStyle(
            fontFamily: "Lobster",
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 16),
        margin: const EdgeInsets.only(bottom: 150),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            fontFamily: "Lobster",
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
