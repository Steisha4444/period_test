import 'package:flutter/material.dart';

import '../../../utils/models/summary_model.dart';
import 'widgets/background.dart';
import 'widgets/summary.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key, required this.summary});
  final SummaryModel summary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          const Background(),
          Summary(summary: summary),
        ],
      ),
    );
  }
}
