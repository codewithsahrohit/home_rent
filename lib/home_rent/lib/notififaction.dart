import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://static.vecteezy.com/system/resources/thumbnails/023/308/330/small_2x/ai-generative-exterior-of-modern-luxury-house-with-garden-and-beautiful-sky-photo.jpg'), // Replace with your image URL or asset path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Transparent layer for back button and main content
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Back button (top left)
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.7),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              const Spacer(),
              // Bottom content (sign in, join buttons, text)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Unlock the Market',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Smart notification let you know when important things happen.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        disabledBackgroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Sign in',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[400],
                        disabledBackgroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Join',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
