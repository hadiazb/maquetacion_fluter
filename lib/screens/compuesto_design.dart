import 'package:flutter/material.dart';

// Nosotros
import 'package:app_one/widgets/background_widget.dart';

class CompuestoDesign extends StatelessWidget {
  const CompuestoDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // Background
        Background()
      ],
    ));
  }
}
