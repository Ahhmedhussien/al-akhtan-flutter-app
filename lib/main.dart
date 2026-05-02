import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const AlAkhtanApp());
}

class AlAkhtanApp extends StatelessWidget {
  const AlAkhtanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الأختان - طرح',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
    );
  }
}
