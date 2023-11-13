import '../../utils/models/summary_model.dart';

class SummaryRepository {
  static final SummaryRepository _summaryRepository =
      SummaryRepository._internal(); // build a singleton

  SummaryModel? summaryModel;

  factory SummaryRepository() => _summaryRepository;

  SummaryRepository._internal();
}
