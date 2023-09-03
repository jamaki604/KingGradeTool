import 'package:flutter_test/flutter_test.dart';
import 'package:gradetool/GradeConverter.dart';


void main() {
  GradeConverter converter = GradeConverter();

  test('Grade 91 should be an A', () {
    const numericGrade = 91;
    const expectedLetterGrade = 'A';

    final actualLetterGrade = converter.convertGrade(numericGrade);

    expect(actualLetterGrade, equals(expectedLetterGrade));
  }); //End Test for Greater then Value for A being 91


}


