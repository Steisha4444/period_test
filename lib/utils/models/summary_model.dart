import 'package:equatable/equatable.dart';

import '../enums.dart';

class SummaryModel extends Equatable {
  final Option? option;
  final int? yearOfBirth;

  const SummaryModel({
    required this.option,
    required this.yearOfBirth,
  });

  SummaryModel copyWith({
    String? choice,
    int? dateOfBirth,
  }) {
    return SummaryModel(
      option: option,
      yearOfBirth: dateOfBirth,
    );
  }

  @override
  List<Object?> get props => [
        option,
        yearOfBirth,
      ];
}
