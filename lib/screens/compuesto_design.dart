import 'package:flutter/material.dart';

// Nosotros
import 'package:app_one/widgets/card_table_widget.dart';
import 'package:app_one/widgets/custom_bottom_navigation.dart';
import 'package:app_one/widgets/page_tite_widget.dart';
import 'package:app_one/widgets/background_widget.dart';

class CompuestoDesign extends StatelessWidget {
  const CompuestoDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          // Background
          Background(),
          // Home Body
          _HomeBody()
        ],
      ),
      bottomNavigationBar: const CustomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          // Titulos
          PageTitle(),
          // Card Table
          CardTable()
        ],
      ),
    );
  }
}
