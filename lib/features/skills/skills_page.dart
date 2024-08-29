import 'package:flutter/material.dart';

class Skill {
  final String name;
  final double level; // 0.0 to 1.0

  Skill(this.name, this.level);
}

class SkillsPage extends StatelessWidget {
  SkillsPage({Key? key}) : super(key: key);

  final List<Skill> skills = [
    Skill('Flutter', 0.9),
    Skill('Dart', 0.9),
    Skill('React Native', 0.7),
    Skill('JavaScript', 0.8),
    Skill('HTML/CSS', 0.8),
    Skill('Git', 0.8),
    Skill('Firebase', 0.7),
    Skill('REST APIs', 0.8),
    Skill('UI/UX Design', 0.7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Skills'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: skills.length,
        itemBuilder: (context, index) {
          final skill = skills[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                skill.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: skill.level,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).colorScheme.secondary,
                ),
              ),
              const SizedBox(height: 16),
            ],
          );
        },
      ),
    );
  }
}