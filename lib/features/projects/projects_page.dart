import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Project {
  final String title;
  final String description;
  final String imageUrl;

  Project(this.title, this.description, this.imageUrl);
}

class ProjectsPage extends StatelessWidget {
  ProjectsPage({Key? key}) : super(key: key);

  final List<Project> projects = [
    Project(
      'Flutter Chat App',
      'A real-time chat application built with Flutter and Firebase.',
      'assets/images/chat_app.jpg',
    ),
    Project(
      'E-commerce Mobile App',
      'A fully-functional e-commerce app with cart and payment integration.',
      'assets/images/ecommerce_app.jpg',
    ),
    Project(
      'Task Management Web App',
      'A responsive web application for task management built with Flutter Web.',
      'assets/images/task_app.jpg',
    ),
    // Add more projects as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemCount: projects.length,
          itemBuilder: (context, index) {
            final project = projects[index];
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    project.imageUrl,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          project.title,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          project.description,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}