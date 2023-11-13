import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          bottom: 0,
          child: SvgPicture.asset('assets/images/svgs/bottom_right_year.svg'),
        ),
        Positioned(
          left: 20,
          bottom: 90,
          child: SvgPicture.asset('assets/images/svgs/circle_bottom_year.svg'),
        ),
        Positioned(
          right: 0,
          bottom: 300,
          child: SvgPicture.asset('assets/images/svgs/left_year.svg'),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: SvgPicture.asset('assets/images/svgs/left_top_year.svg'),
        ),
        Positioned(
          top: 35,
          right: 70,
          child: SvgPicture.asset('assets/images/svgs/circle_top_year.svg'),
        ),
      ],
    );
  }
}
