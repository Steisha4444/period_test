import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:equatable/equatable.dart';

import '../../../data/repositories/summary_repository.dart';
import '../../../utils/enums.dart';
import '../../../utils/models/summary_model.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  final SummaryRepository summaryRepository;

  NavigationBloc({required this.summaryRepository})
      : super(NavigationInitial()) {
    on<NavigationOptionTapped>(_onNavigationOptionTapped);
    on<NavigationYearTapped>(_onNavigationYearTapped);
  }

  void _onNavigationOptionTapped(
      NavigationOptionTapped event, Emitter<NavigationState> emit) {
    final summary = SummaryModel(
      yearOfBirth: -1,
      option: event.option,
    );
    summaryRepository.summaryModel = summary;

    emit(NavigationOptionSelected(summary: summary));
  }

  void _onNavigationYearTapped(
      NavigationYearTapped event, Emitter<NavigationState> emit) {
    final summary = SummaryModel(
      yearOfBirth: event.year,
      option: summaryRepository.summaryModel?.option,
    );
    summaryRepository.summaryModel = summary;

    emit(NavigationYearSelected(summary: summary));
  }
}
