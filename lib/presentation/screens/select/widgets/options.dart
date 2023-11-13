import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/enums.dart';
import '../../../../utils/strings.dart';
import '../../../bloc/navigation_bloc.dart';
import 'option_button.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OptionButton(
          title: Texts.trackMyPeriod,
          subtitle: Texts.contraception,
          onPressed: () => context.read<NavigationBloc>().add(
                const NavigationOptionTapped(Option.period),
              ),
        ),
        const SizedBox(
          height: 73,
        ),
        OptionButton(
          title: Texts.getPregnant,
          subtitle: Texts.learnAbout,
          onPressed: () {
            context
                .read<NavigationBloc>()
                .add(const NavigationOptionTapped(Option.pregnant));
          },
        )
      ],
    );
  }
}
