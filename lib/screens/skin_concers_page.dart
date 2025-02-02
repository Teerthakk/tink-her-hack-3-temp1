// SKIN CONCERNS PAGE

import 'package:flutter/material.dart';
import 'package:skinsquid/screens/questions_page.dart';
import 'package:skinsquid/screens/scan_product_page.dart';

class SkinConcernsPage extends StatefulWidget {
  final String skinType;

  SkinConcernsPage(this.skinType);

  @override
  _SkinConcernsPageState createState() => _SkinConcernsPageState();
}

class _SkinConcernsPageState extends State<SkinConcernsPage> {
  List<String> selectedConcerns = [];

  final List<String> skinConcerns = [
    'Dark Spots',
    'Pigmentation',
    'Blackheads',
    'Whiteheads',
    'Wrinkles',
    'Large Pores',
    'Dry Patches',
    'Redness',
    'Oiliness'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Skin Concerns")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: skinConcerns.map((concern) {
                  return Card(
                    elevation: 2,
                    margin: EdgeInsets.symmetric(vertical: 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: CheckboxListTile(
                      title: Text(
                        concern,
                        style: TextStyle(color: Color.fromARGB(209, 225, 185, 51)),
                      ),
                      value: selectedConcerns.contains(concern),
                      onChanged: (bool? value) {
                        setState(() {
                          if (value == true) {
                            selectedConcerns.add(concern);
                          } else {
                            selectedConcerns.remove(concern);
                          }
                        });
                      },
                      activeColor: Color.fromARGB(209, 225, 185, 51),
                      checkColor: Colors.white,
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionsPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(209, 225, 185, 51),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Find Product",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScanProductPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(209, 225, 185, 51),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Scan Product",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
