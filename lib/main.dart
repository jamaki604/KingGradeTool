import 'package:flutter/material.dart';

import 'grade_converter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grade Converter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Grade Converter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GradeConverter converter = GradeConverter();
  final TextEditingController numericGradeController = TextEditingController();
  String? letterGrade = '';

  void _gradeConverter() {
    final numericGradeText = numericGradeController.text;
    if (numericGradeText.isNotEmpty) {
      final numericGrade = int.tryParse(numericGradeText);
      if (numericGrade != null) {
        final convertedGrade = converter.convertGrade(numericGrade);
        setState(() {
          letterGrade = convertedGrade;
        });
      } else {
        setState(() {
          letterGrade = 'Invalid input';
        });
      }
    } else {
      setState(() {
        letterGrade = 'Please enter a numeric grade';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10.0),
              color: Colors.teal,
              child: const Text(
                'Enter your numeric grade below:',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 270,
              child: TextField(
                controller: numericGradeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Numeric grade goes here",
                ),
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _gradeConverter,
              child: const Text('Submit'),
            ),
            const SizedBox(height: 10),
            Text(
              'Letter grade: $letterGrade',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
