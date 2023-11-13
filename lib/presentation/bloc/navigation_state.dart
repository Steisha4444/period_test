part of 'navigation_bloc.dart';

sealed class NavigationState extends Equatable {
  const NavigationState();

  @override
  List<Object> get props => [];
}

final class NavigationInitial extends NavigationState {}

final class NavigationOptionSelected extends NavigationState {
  final SummaryModel summary;

  const NavigationOptionSelected({required this.summary});

  @override
  List<Object> get props => [summary];
}

final class NavigationYearSelected extends NavigationState {
  final SummaryModel summary;

  const NavigationYearSelected({required this.summary});

  @override
  List<Object> get props => [summary];
}
