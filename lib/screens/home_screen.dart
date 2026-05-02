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
            const SizedBox(height: 30),
            Center(
              child: Column(
                children: [
                  const Text(
                    'الأكثر مبيعاً',
                    style: TextStyle(
                      color: AppColors.primaryRed,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 40,
                    color: AppColors.primaryRed,
                    margin: const EdgeInsets.only(top: 4),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: demoProducts.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: demoProducts[index]);
                },
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
