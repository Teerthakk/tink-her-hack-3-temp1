import 'package:flutter/material.dart';

class SkincareRecommendationPage extends StatelessWidget {
  final Map<String, dynamic> answers;

  const SkincareRecommendationPage({super.key, required this.answers});

  @override
  Widget build(BuildContext context) {
    String skinType = answers["Skin Type"] ?? "Unknown";
    int budget = int.tryParse(answers["Budget"] ?? "0") ?? 0;

    // Skincare recommendations
    String skincareRoutine;

    if (budget <= 1000) {
      if (skinType == "Oily" ||
          skinType == "Oily-Combination" ||
          skinType == "Sensitive" ||
          skinType == "Acne-prone") {
        skincareRoutine = """
*Recommended Skincare for Oily & Combination Skin:*

1. *Cleanser:* Cetaphil Oily Skin Cleanser - Removes excess oil without drying.
2. *Serum:* Minimalist 10% Niacinamide Face Serum - Controls oil & minimizes pores.
3. *Moisturizer:* Minimalist 10% Vitamin B5 Oil-Free Moisturizer - Hydrates without greasiness.
4. *Sunscreen:* Lakme Matte Sunscreen SPF 50 PA+++ - Provides sun protection with a matte finish.

These products are budget-friendly and available on platforms like Nykaa.
        """;
      } else if (skinType == "Dry" || skinType == "Normal") {
        skincareRoutine = """
*Recommended Skincare for Dry & Normal Skin:*

1. *Cleanser:* CeraVe Hydrating Cleanser - Gently cleanses and hydrates.
2. *Serum:* Plum 15% Mandarin & Vitamin C Glow Serum - Brightens and deeply hydrates.
3. *Moisturizer:* Cetaphil Moisturizing Cream - Provides intense hydration for dry skin.
4. *Sunscreen:* Moha Sunscreen Spray SPF 50 PA+++ - Hydrates while offering sun protection.

These products are budget-friendly and available on platforms like Nykaa.
        """;
      } else {
        skincareRoutine = "Oops! It looks like we don't have recommendations for your skin type.";
      }
    } else {
      skincareRoutine = "Your budget exceeds ₹1000. You can explore premium skincare options based on your preferences.";
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Skincare Routine")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            skincareRoutine,
            style: const TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}