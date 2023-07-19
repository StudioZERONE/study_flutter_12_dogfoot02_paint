import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_flutter_12_dogfoot02_paint/screen/drawing_page/drawing_page.dart';
import 'package:study_flutter_12_dogfoot02_paint/screen/drawing_page/local_utils/drawing_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (context) => DrawingProvider(),
        child: const DrawingPage(),
      ),
    );
  }
}
