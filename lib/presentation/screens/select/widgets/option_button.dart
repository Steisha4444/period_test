import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/font_family.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  final String title;
  final String subtitle;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0),
        backgroundColor: const Color(0xFFFFEFEF),
        foregroundColor: Colors.black,
        fixedSize: const Size(346, 131),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 17, 12, 17),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    fontFamily: FontFamily.nunito,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 289,
                  child: Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      fontFamily: FontFamily.nunito,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SvgPicture.asset('assets/images/svgs/arrow_right_dark.svg')
          ],
        ),
      ),
    );
  }
}
