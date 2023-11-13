part of 'navigation_bloc.dart';

sealed class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object> get props => [];
}

class NavigationOptionTapped extends NavigationEvent {
  final Option option;

  const NavigationOptionTapped(this.option);
}

class NavigationYearTapped extends NavigationEvent {
  final int year;

  const NavigationYearTapped({required this.year});
}
