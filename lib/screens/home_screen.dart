import 'package:flutter/material.dart';
import '../widgets/custom_header.dart';
import '../widgets/main_banner.dart';
import '../widgets/product_card.dart';
import '../widgets/custom_bottom_nav.dart';
import '../models/product.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomHeader(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MainBanner(),
            const SizedBox(height: 25),
            Center(
              child: Column(
                children: [
                  const Text(
                    'الأكثر مبيعاً',
                    style: TextStyle(
                      color: AppColors.primaryRed,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Amiri',
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    height: 1.5,
                    width: 35,
                    color: AppColors.primaryRed,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: demoProducts.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: demoProducts[index]);
                },
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
