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
          child: SvgPicture.asset('assets/images/svgs/right_bottom_select.svg'),
        ),
        Positioned(
          left: 67,
          bottom: 136,
          child: SvgPicture.asset('assets/images/svgs/circle_select.svg'),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: SvgPicture.asset('assets/images/svgs/left_top_select.svg'),
        ),
      ],
    );
  }
}
