import 'package:flutter_test/flutter_test.dart';
import 'package:gradetool/grade_converter.dart';

void main() {
  GradeConverter converter = GradeConverter();

  test('Grade 91 should be an A', () {
    const numericGrade = 91;
    const expectedLetterGrade = 'A';

    final actualLetterGrade = converter.convertGrade(numericGrade);

    expect(actualLetterGrade, equals(expectedLetterGrade));
  });

  test('Grade 101 should be an A', () {
    const numericGrade = 101;
    const expectedLetterGrade = 'A';

    final actualLetterGrade = converter.convertGrade(numericGrade);

    expect(actualLetterGrade, equals(expectedLetterGrade));
  });

  test('Grade 82 should be an B', () {
    const numericGrade = 82;
    const expectedLetterGrade = 'B';

    final actualLetterGrade = converter.convertGrade(numericGrade);

    expect(actualLetterGrade, equals(expectedLetterGrade));
  });

  test('Grade 73 should be an C', () {
    const numericGrade = 73;
    const expectedLetterGrade = 'C';

    final actualLetterGrade = converter.convertGrade(numericGrade);

    expect(actualLetterGrade, equals(expectedLetterGrade));
  });

  test('Grade 64 should be an D', () {
    const numericGrade = 64;
    const expectedLetterGrade = 'D';

    final actualLetterGrade = converter.convertGrade(numericGrade);

    expect(actualLetterGrade, equals(expectedLetterGrade));
  });

  test('Grade 55 should be an F', () {
    const numericGrade = 55;
    const expectedLetterGrade = 'F';

    final actualLetterGrade = converter.convertGrade(numericGrade);

    expect(actualLetterGrade, equals(expectedLetterGrade));
  });

  test('Grade 0 should be an F', () {
    const numericGrade = 0;
    const expectedLetterGrade = 'F';

    final actualLetterGrade = converter.convertGrade(numericGrade);

    expect(actualLetterGrade, equals(expectedLetterGrade));


  });
}
