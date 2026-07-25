import 'package:flutter/material.dart';
import 'package:palineti/pali_course.dart';

import 'presentation/screens/home_screen.dart';

void main() {
  runApp(const PaliCourseExampleApp());
}

class PaliCourseExampleApp extends StatelessWidget {
  const PaliCourseExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pāḷi Course — Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.paliGold,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: AppColors.paliBg,
        useMaterial3: true,
        fontFamily: 'Roboto', // Fallback — NotoSans sẽ thêm sau
      ),
      home: const HomeScreen(),
    );
  }
}
