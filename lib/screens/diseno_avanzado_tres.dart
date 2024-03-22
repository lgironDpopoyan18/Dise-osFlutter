import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/button_navigation.dart';
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/page_title.dart';
import 'package:flutter/material.dart';

class DisenoAvanzadoScreen extends StatelessWidget {
  const DisenoAvanzadoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background1(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
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
          PageTitle(),
          CardTable(),
        ],
      ),
    );
  }
}
