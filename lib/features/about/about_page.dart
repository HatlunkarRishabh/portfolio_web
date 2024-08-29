import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Who am I?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'I\'m John Doe, a passionate Flutter developer with a keen eye for design and a love for creating seamless user experiences. With over 5 years of experience in mobile app development, I\'ve honed my skills in crafting efficient, scalable, and beautiful applications.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            Text(
              'My Journey',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'My journey in software development began with a fascination for how technology can solve real-world problems. This curiosity led me to explore various programming languages and frameworks, ultimately finding my passion in Flutter and its ability to create cross-platform applications with a single codebase.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            Text(
              'What I Do',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              '• Develop high-performance mobile applications using Flutter\n'
              '• Design intuitive user interfaces and experiences\n'
              '• Implement complex state management solutions\n'
              '• Optimize app performance and responsiveness\n'
              '• Collaborate with cross-functional teams to deliver outstanding products',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}