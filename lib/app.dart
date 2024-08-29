import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/features/home/home_page.dart';
import 'package:portfolio_web/features/about/about_page.dart';
import 'package:portfolio_web/features/projects/projects_page.dart';
import 'package:portfolio_web/features/skills/skills_page.dart';
import 'package:portfolio_web/features/contact/contact_page.dart';
import 'package:portfolio_web/shared/theme/app_theme.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/about',
        builder: (context, state) => const AboutPage(),
      ),
      GoRoute(
        path: '/projects',
        builder: (context, state) =>  ProjectsPage(),
      ),
      GoRoute(
        path: '/skills',
        builder: (context, state) =>  SkillsPage(),
      ),
      GoRoute(
        path: '/contact',
        builder: (context, state) => const ContactPage(),
      ),
    ],
  );
});

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Portfolio Website',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}