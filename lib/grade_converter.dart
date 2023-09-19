class GradeConverter {
  final Map<int, String> gradeLibrary = {
    90: 'A',
    80: 'B',
    70: 'C',
    60: 'D',
    0: 'F',
  };

  String convertGrade(int numericGrade) {
    return gradeLibrary.entries
        .firstWhere(
          (entry) => numericGrade >= entry.key,
          orElse: () => const MapEntry(0, 'F'),
        )
        .value;
  }

}
