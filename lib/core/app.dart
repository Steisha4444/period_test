import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../presentation/screens/summary/summary_screen.dart';
import '../presentation/screens/year/year_screen.dart';

import '../data/repositories/summary_repository.dart';
import '../presentation/bloc/navigation_bloc.dart';
import '../presentation/screens/select/select_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBloc(
        summaryRepository: SummaryRepository(),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            if (state is NavigationYearSelected) {
              return SummaryScreen(
                summary: context
                    .read<NavigationBloc>()
                    .summaryRepository
                    .summaryModel!,
              );
            } else if (state is NavigationOptionSelected) {
              return const YearScreen();
            } else {
              return const SelectScreen();
            }
          },
        ),
      ),
    );
  }
}
