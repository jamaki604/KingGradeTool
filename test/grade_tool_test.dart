import 'dart:ffi';
import 'package:flutter_test/flutter_test.dart';

void main(){


  final gradeLibrary = {
    90: 'A',
  };

  test('Grade Conversion Test', () {
    const numericGrade = 90;
    const expectedLetterGrade = 'A';

    final actualLetterGrade = gradeLibrary[numericGrade];

    expect(actualLetterGrade, expectedLetterGrade);
  }); //End Test for A

} //End Main
