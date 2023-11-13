import 'package:flutter/material.dart';

import '../../../../utils/enums.dart';
import '../../../../utils/font_family.dart';
import '../../../../utils/models/summary_model.dart';
import '../../../../utils/strings.dart';

class Summary extends StatelessWidget {
  const Summary({super.key, required this.summary});
  final SummaryModel summary;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            Texts.selectionSummary,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              fontFamily: FontFamily.nunito,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: TextField(
              enabled: false,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
                fontFamily: FontFamily.nunito,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  fontFamily: FontFamily.nunito,
                  color: Colors.black,
                ),
                hintText: summary.option == Option.period
                    ? Texts.trackMyPeriod
                    : Texts.getPregnant,
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: ' ${summary.yearOfBirth}',
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  fontFamily: FontFamily.nunito,
                  color: Colors.black,
                ),
              ),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
                fontFamily: FontFamily.nunito,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
