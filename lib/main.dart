import 'package:app_one/screens/compuesto_design.dart';
import 'package:app_one/screens/scroll_design.dart';
import 'package:flutter/material.dart';

// personalizadas
import 'package:app_one/screens/basic_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'compuesto_design',
      routes: {
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_design': (_) => const ScrollScreen(),
        'compuesto_design': (_) => const CompuestoDesign()
      },
    );
  }
}
