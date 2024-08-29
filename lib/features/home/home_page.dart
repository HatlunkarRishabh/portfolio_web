import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 20),
            Text(
              'John Doe',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 10),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Flutter Developer',
                  textStyle: Theme.of(context).textTheme.headlineSmall,
                ),
                TypewriterAnimatedText(
                  'UI/UX Enthusiast',
                  textStyle: Theme.of(context).textTheme.headlineSmall,
                ),
                TypewriterAnimatedText(
                  'Problem Solver',
                  textStyle: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
              repeatForever: true,
              pause: const Duration(milliseconds: 1000),
            ),
            const SizedBox(height: 30),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () => context.go('/about'),
                  child: const Text('About Me'),
                ),
                ElevatedButton(
                  onPressed: () => context.go('/projects'),
                  child: const Text('Projects'),
                ),
                ElevatedButton(
                  onPressed: () => context.go('/skills'),
                  child: const Text('Skills'),
                ),
                ElevatedButton(
                  onPressed: () => context.go('/contact'),
                  child: const Text('Contact'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}