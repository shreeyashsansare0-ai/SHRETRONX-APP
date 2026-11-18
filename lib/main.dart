
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
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF080B12),
      appBar: AppBar(
        backgroundColor: const Color(0xFF101827),
        title: const Text(
          'SHRETRONX',
          style: TextStyle(
            color: Colors.cyanAccent,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.cyanAccent),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Icon(
                  Icons.blur_circular,
                  size: 110,
                  color: Colors.cyanAccent,
                ),
              ),
              const SizedBox(height: 15),
              const Center(
                child: Text(
                  'SYSTEM ONLINE',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 17,
                    letterSpacing: 4,
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Text(
                'WELCOME BACK',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Your personal AI assistant is ready.',
                style: TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: 30),
              featureCard(
                Icons.chat,
                'AI CHAT',
                'Talk with your AI assistant',
              ),
              featureCard(
                Icons.mic,
                'VOICE ASSISTANT',
                'Speak with SHRETRONX',
              ),
              featureCard(
                Icons.image,
                'AI IMAGE STUDIO',
                'Create images using AI',
              ),
              featureCard(
                Icons.edit,
                'AI IMAGE EDITOR',
                'Edit your uploaded images',
              ),
              featureCard(
                Icons.language,
                'LANGUAGE',
                'Hindi  •  Marathi  •  English',
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  'SHRETRONX  •  VERSION 1.0',
                  style: TextStyle(
                    color: Colors.white38,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget featureCard(IconData icon, String title, String subtitle) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF101827),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.cyanAccent.withOpacity(0.35)),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.cyanAccent, size: 30),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.cyanAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios,
              color: Colors.white38, size: 16),
        ],
      ),
    );
  }
}
