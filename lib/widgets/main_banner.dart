import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: AppColors.backgroundWhite,
      child: Stack(
        children: [
          // Background Image Placeholder (Red and White Fabric)
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.primaryRed, Colors.white],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ),
          // Content
          Positioned(
            right: 20,
            top: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'الاختان',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontSize: 48,
                  ),
                ),
                const Text(
                  'طرح',
                  style: TextStyle(
                    color: AppColors.primaryRed,
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'نعومة.. جودة.. أناقة',
                  style: TextStyle(
                    color: AppColors.textGrey,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryRed,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('تسوقي الآن'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
