// SKIN TYPE PAGE
import 'package:flutter/material.dart';
import 'package:skinsquid/screens/skin_concers_page.dart';

class SkinTypePage extends StatefulWidget {
  const SkinTypePage({super.key});

  @override
  _SkinTypePageState createState() => _SkinTypePageState();
}

class _SkinTypePageState extends State<SkinTypePage> {
  String? selectedSkinType;

  final List<String> skinTypes = [
    'Oily',
    'Dry',
    'Normal',
    'Combination',
    'Sensitive',
    'Acne-prone'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Skin Type")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                prefixIcon: Icon(Icons.face, color: Color.fromARGB(209, 225, 185, 51)),
              ),
              items: skinTypes.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Color.fromARGB(209, 225, 185, 51)),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedSkinType = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selectedSkinType != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SkinConcernsPage(selectedSkinType!),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(209, 225, 185, 51),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Next",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
