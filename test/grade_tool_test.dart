import 'dart:ffi';
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

} //End Main
