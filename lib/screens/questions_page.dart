/*import 'package:flutter/material.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:skinsquid/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuestionsPage(),
    );
  }
}

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  // Define variables to hold user choices for skin type
  String skinType = '';
  String pimpleFrequency = '';
  String pimpleSize = '';
  String pimpleDuration = '';
  int painLevel = 1;
  double budget = 0.0;
  int drynessLevel = 1;
  bool isFlaky = false;
  bool getsExtraDryInWinter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skin Type Questionnaire'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Question: Skin Type
              Text('Select your skin type:'),
              ListTile(
                title: Text('Oily/Oily-Combination/Sensitive/Acne-prone'),
                leading: Radio<String>(
                  value: 'oily',
                  groupValue: skinType,
                  onChanged: (value) {
                    setState(() {
                      skinType = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Dry/Normal'),
                leading: Radio<String>(
                  value: 'dry',
                  groupValue: skinType,
                  onChanged: (value) {
                    setState(() {
                      skinType = value!;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
        
              // Dynamic questions based on skin type
              if (skinType == 'oily')
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('1. How often do pimples appear?'),
                    ListTile(
                      title: Text('Rarely'),
                      leading: Radio<String>(
                        value: 'rarely',
                        groupValue: pimpleFrequency,
                        onChanged: (value) {
                          setState(() {
                            pimpleFrequency = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text('Frequently'),
                      leading: Radio<String>(
                        value: 'frequently',
                        groupValue: pimpleFrequency,
                        onChanged: (value) {
                          setState(() {
                            pimpleFrequency = value!;
                          });
                        },
                      ),
                    ),
                    Text('2. What is the size of the pimples?'),
                    ListTile(
                      title: Text('Small bumps'),
                      leading: Radio<String>(
                        value: 'small',
                        groupValue: pimpleSize,
                        onChanged: (value) {
                          setState(() {
                            pimpleSize = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text('Big, pus-filled acne'),
                      leading: Radio<String>(
                        value: 'big',
                        groupValue: pimpleSize,
                        onChanged: (value) {
                          setState(() {
                            pimpleSize = value!;
                          });
                        },
                      ),
                    ),
                    Text('3. How long do pimples last?'),
                    ListTile(
                      title: Text('Long-lasting'),
                      leading: Radio<String>(
                        value: 'long',
                        groupValue: pimpleDuration,
                        onChanged: (value) {
                          setState(() {
                            pimpleDuration = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text('Disappear quickly'),
                      leading: Radio<String>(
                        value: 'quick',
                        groupValue: pimpleDuration,
                        onChanged: (value) {
                          setState(() {
                            pimpleDuration = value!;
                          });
                        },
                      ),
                    ),
                    Text('4. Painfulness level (1-5):'),
                    Slider(
                      value: painLevel.toDouble(),
                      min: 1,
                      max: 5,
                      divisions: 4,
                      label: painLevel.toString(),
                      onChanged: (value) {
                        setState(() {
                          painLevel = value.toInt();
                        });
                      },
                    ),
                    Text('5. What is your budget for skincare?'),
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      onChanged: (value) {
                        setState(() {
                          budget = double.tryParse(value) ?? 0.0;
                        });
                      },
                      decoration: InputDecoration(hintText: 'Enter budget amount'),
                    ),
                  ],
                )
              else if (skinType == 'dry')
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('1. Dryness level (1-5):'),
                    Slider(
                      value: drynessLevel.toDouble(),
                      min: 1,
                      max: 5,
                      divisions: 4,
                      label: drynessLevel.toString(),
                      onChanged: (value) {
                        setState(() {
                          drynessLevel = value.toInt();
                        });
                      },
                    ),
                    Text('2. Do you have white flaky skin?'),
                    ListTile(
                      title: Text('Yes'),
                      leading: Radio<bool>(
                        value: true,
                        groupValue: isFlaky,
                        onChanged: (value) {
                          setState(() {
                            isFlaky = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text('No'),
                      leading: Radio<bool>(
                        value: false,
                        groupValue: isFlaky,
                        onChanged: (value) {
                          setState(() {
                            isFlaky = value!;
                          });
                        },
                      ),
                    ),
                    Text('3. Does your skin get extra dry during winters?'),
                    ListTile(
                      title: Text('Yes'),
                      leading: Radio<bool>(
                        value: true,
                        groupValue: getsExtraDryInWinter,
                        onChanged: (value) {
                          setState(() {
                            getsExtraDryInWinter = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text('No'),
                      leading: Radio<bool>(
                        value: false,
                        groupValue: getsExtraDryInWinter,
                        onChanged: (value) {
                          setState(() {
                            getsExtraDryInWinter = value!;
                          });
                        },
                      ),
                    ),
                    Text('4. Pimple frequency (1-5):'),
                    Slider(
                      value: (pimpleFrequency.isNotEmpty) ? double.parse(pimpleFrequency) : 1.0,
                      min: 1,
                      max: 5,
                      divisions: 4,
                      onChanged: (value) {
                        setState(() {
                          pimpleFrequency = value.toString();
                        });
                      },
                    ),
                    Text('5. What is your budget for skincare?'),
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      onChanged: (value) {
                        setState(() {
                          budget = double.tryParse(value) ?? 0.0;
                        });
                      },
                      decoration: InputDecoration(hintText: 'Enter budget amount'),
                    ),
                  ],
                ),
              SizedBox(height: 20),
              // Display suggestions button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SkinCarePage() ));
                  
                },
                child: Text('Show Suggested Skincare Routine'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
