import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../utils/font_family.dart';

import '../../../../utils/strings.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        fixedSize: const Size(189, 50),
        elevation: 0,
        padding: const EdgeInsets.all(0),
      ),
      onPressed: onTap,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF454581),
              Color(0xFF8A8AB0),
            ],
          ),
        ),
        child: Center(
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 65),
                child: Text(
                  Texts.next,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    fontFamily: FontFamily.nunito,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 40),
              SvgPicture.asset('assets/images/svgs/arrow_right_light.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
