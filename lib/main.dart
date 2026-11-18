import 'package:flutter/material.dart';

void main() {
  runApp(const ShretronxApp());
}

class ShretronxApp extends StatelessWidget {
  const ShretronxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SHRETRONX',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF080B12),
      appBar: AppBar(
        title: const Text('SHRETRONX'),
        backgroundColor: const Color(0xFF101827),
      ),
      body: const Center(
        child: Text(
          'AI SYSTEM INITIALIZED',
          style: TextStyle(
            fontSize: 22,
            color: Colors.cyanAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
