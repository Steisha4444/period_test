import 'package:flutter/material.dart';

import 'widgets/background.dart';
import 'widgets/options.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Background(),
          Options(),
        ],
      ),
    );
  }
}
