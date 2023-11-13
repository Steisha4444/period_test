import 'package:flutter/material.dart';

import 'widgets/background.dart';
import 'widgets/custom_year_picker.dart';

class YearScreen extends StatefulWidget {
  const YearScreen({super.key});

  @override
  State<YearScreen> createState() => _YearScreenState();
}

class _YearScreenState extends State<YearScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Background(),
          CustomYearPicker(),
        ],
      ),
    );
  }
}
