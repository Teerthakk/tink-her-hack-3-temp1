import 'package:flutter/material.dart';
import 'package:skinsquid/screens/intro_screen.dart';
import 'package:skinsquid/screens/thank_you_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

class SkinCarePage extends StatefulWidget {
  @override
  _SkinCarePageState createState() => _SkinCarePageState();
}

class _SkinCarePageState extends State<SkinCarePage> {
  String skinType = ''; // Oily/Combination or Dry/Normal
  double budget = 0; // User's selected budget

  // Method to display the skincare products based on skin type and budget
  String getSkinCareRoutine() {
    if (skinType == 'Oily/Combination') {
      if (budget <= 1000) {
        return '''Oily/Combination Skin (Under ₹1000): Face Wash: Cetaphil Oily Skin Cleanser Serum: Minimalist 10% Niacinamide Face Serum Moisturizer: Minimalist 10% Vitamin B5, Oil-Free Moisturizer Sunscreen: Lakme Matte Sunscreen SPF 50 PA+++

          These products are available on platforms like Nykaa and are priced under ₹1000, making them both effective and affordable options for your skincare routine. Similarly, suggest a whole skincare range like this for under 2000 rs, and seperate oily and dry skincare routine
        ''';
      } else {
        return '''Oily/Combination Skin (Under ₹2000): Face Wash: Neutrogena Oil-Free Acne Wash Serum: Dot & Key CICA & Niacinamide Serum Moisturizer: Clinique Dramatically Different Oil-Free Gel Sunscreen: Aqualogica Glow+ Dewy Sunscreen SPF 50

          These products are available on platforms like Nykaa and are priced under ₹1000, making them both effective and affordable options for your skincare routine. Similarly, suggest a whole skincare range like this for under 2000 rs, and seperate oily and dry skincare routine
        ''';
      }
    } else if (skinType == 'Dry/Normal') {
      if (budget <= 1000) {
        return '''Dry/Normal Skin (Under ₹1000): Face Wash: CeraVe Hydrating Cleanser Serum: Plum 15% Mandarin & Vitamin C Glow Face Serum Moisturizer: Cetaphil Moisturising Cream Sunscreen: Moha Sunscreen Spray SPF 50 PA+++


          These products are available on platforms like Nykaa and are priced under ₹1000, making them both effective and affordable options for your skincare routine. Similarly, suggest a whole skincare range like this for under 2000 rs, and seperate oily and dry skincare routine
        ''';
      } else {
        return ''' Dry/Normal Skin (Under ₹2000): Face Wash: Bioderma Sensibio H2O Micellar Water Serum: Klairs Freshly Juiced Vitamin C Serum Moisturizer: Belif The True Cream Aqua Bomb Sunscreen: La Roche-Posay Anthelios Melt-in Milk Sunscreen SPF 50


      These products are available on platforms like Nykaa and are priced under ₹1000, making them both effective and affordable options for your skincare routine. Similarly, suggest a whole skincare range like this for under 2000 rs, and seperate oily and dry skincare routine
        ''';
      }
    } else {
      return 'Please select a valid skin type.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skincare Routine Finder'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Select Your Skin Type:'),
              DropdownButton<String>(
                value: skinType.isEmpty ? null : skinType,
                hint: Text('Select Skin Type'),
                items: [
                  DropdownMenuItem(
                      value: 'Oily/Combination',
                      child: Text('Oily/Combination')),
                  DropdownMenuItem(
                      value: 'Dry/Normal', child: Text('Dry/Normal')),
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    skinType = newValue ?? '';
                  });
                },
              ),
              SizedBox(height: 20),
              Text('Select Your Budget:'),
              DropdownButton<double>(
                value: budget == 0 ? null : budget,
                hint: Text('Select Budget'),
                items: [
                  DropdownMenuItem(value: 1000, child: Text('Under ₹1000')),
                  DropdownMenuItem(value: 2000, child: Text('Under ₹2000')),
                ],
                onChanged: (double? newValue) {
                  setState(() {
                    budget = newValue ?? 0;
                  });
                },
              ),
              SizedBox(height: 20),
              Text(
                'Get Skincare Routine',
                style: TextStyle(fontSize: 30),
              ),
              Divider(),
              SizedBox(height: 20),
              Text(
                textAlign: TextAlign.center,
                getSkinCareRoutine(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ThankYouScreen()));
                  }, child: Text('Finished')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
