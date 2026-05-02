import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundWhite,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu, color: AppColors.primaryRed),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Column(
        children: [
          const Icon(Icons.woman, color: AppColors.primaryRed, size: 30), // Placeholder for Logo
          Text(
            'الاختان',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 20,
                  letterSpacing: 1.2,
                ),
          ),
          Container(
            height: 1,
            width: 40,
            color: AppColors.primaryRed,
            margin: const EdgeInsets.only(top: 2),
          ),
          const Text(
            'طرح',
            style: TextStyle(
              color: AppColors.primaryRed,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
      actions: [
        Stack(
          alignment: Alignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.shopping_cart_outlined, color: AppColors.primaryRed),
              onPressed: () {},
            ),
            Positioned(
              right: 8,
              top: 8,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: AppColors.primaryRed,
                  borderRadius: BorderRadius.circular(10),
                ),
                constraints: const BoxConstraints(
                  minWidth: 14,
                  minHeight: 14,
                ),
                child: const Text(
                  '0',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
