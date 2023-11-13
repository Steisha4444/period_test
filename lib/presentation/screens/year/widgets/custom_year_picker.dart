import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/font_family.dart';
import '../../../../utils/strings.dart';
import '../../../bloc/navigation_bloc.dart';
import 'next_button.dart';

class CustomYearPicker extends StatefulWidget {
  const CustomYearPicker({super.key});

  @override
  State<CustomYearPicker> createState() => _CustomYearPickerState();
}

class _CustomYearPickerState extends State<CustomYearPicker> {
  final FixedExtentScrollController _scrollController =
      FixedExtentScrollController(initialItem: 121);

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            Texts.yearOfBirth,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              fontFamily: FontFamily.nunito,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.07,
          ),
          Container(
            color: Colors.transparent,
            height: 300,
            width: 355,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CupertinoPicker(
                  backgroundColor: const Color.fromARGB(255, 240, 240, 240),
                  itemExtent: 60,
                  magnification: 1,
                  squeeze: 1,
                  diameterRatio: 2.5,
                  scrollController: _scrollController,
                  onSelectedItemChanged: (_) {},
                  selectionOverlay: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  children: List.generate(150, (index) {
                    return SizedBox(
                      height: 67,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          (index + 1874).toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40,
                            fontFamily: FontFamily.nunito,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                Positioned(
                  top: 0,
                  child: IgnorePointer(
                    child: Container(
                      width: 355,
                      height: 65 * 2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xFFFFFFFF).withOpacity(0.9),
                            const Color(0xFFFFFFFF).withOpacity(0.1),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: IgnorePointer(
                    child: Container(
                      width: 355,
                      height: 65 * 2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            const Color(0xFFFFFFFF).withOpacity(0.9),
                            const Color(0xFFFFFFFF).withOpacity(0.1),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.2,
          ),
          NextButton(
            onTap: () => context.read<NavigationBloc>().add(
                  NavigationYearTapped(
                    year: _scrollController.selectedItem + 1874,
                  ),
                ),
          )
        ],
      ),
    );
  }
}
