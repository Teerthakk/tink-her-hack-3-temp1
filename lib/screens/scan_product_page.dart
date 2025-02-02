// SCAN PRODUCT PAGE
import 'package:flutter/material.dart';

class ScanProductPage extends StatelessWidget {
  const ScanProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scan Product")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Upload a photo of your product to check if it's suitable for your skin type.",
              style: TextStyle(fontSize: 16, color: Color.fromARGB(209, 225, 185, 51)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle image upload logic (not implemented here)
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(209, 225, 185, 51),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Upload Photo",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}