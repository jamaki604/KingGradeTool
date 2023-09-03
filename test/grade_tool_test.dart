import 'package:flutter_test/flutter_test.dart';

void main(){


  final gradeLibrary = {
    90: 'A',
    80: 'B',
    70: 'C',
    60: 'D',
    0: 'F',
  };

  test('Grade Conversion Test', () {
    const numericGrade = 90;
    const expectedLetterGrade = 'A';

    final actualLetterGrade = gradeLibrary[numericGrade];

    expect(actualLetterGrade, expectedLetterGrade);
  }); //End Test for A

  test('Grade Conversion Test', () {
    const numericGrade = 80;
    const expectedLetterGrade = 'B';

    final actualLetterGrade = gradeLibrary[numericGrade];

    expect(actualLetterGrade, expectedLetterGrade);
  });//End test for B

  test('Grade 91 should be an A', () {
    const numericGrade = 91;
    const expectedLetterGrade = 'A';

    final actualLetterGrade = gradeLibrary.entries.firstWhere(
            (entry) => numericGrade >= entry.key,
        orElse: () => const MapEntry(0, 'F')).value;

    expect(actualLetterGrade, equals(expectedLetterGrade));
  });//End Test for Greater then Value for A being 91

} //End Main
