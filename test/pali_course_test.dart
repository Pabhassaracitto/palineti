// packages/pali_course/test/pali_course_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:pali_course/pali_course.dart';

void main() {
  test('pali_course barrel export works', () {
    // Kiểm tra MascAParadigm export đúng
    final form = MascAParadigm.generate(
      'nara',
      PaliCase.nom,
      PaliNumber.singular,
    );
    expect(form, 'naro');
  });

  test('pali_course vocab model works', () {
    final vocab = PaliVocabModel(
      id: 'pv_test',
      root: 'Buddha',
      paradigmId: 'masc_a',
      wordVi: 'Đức Phật',
      wordEn: 'The Buddha',
      lessonId: 'lesson_01',
      pronunciation: 'BOOD-dhah',
    );
    expect(vocab.nominativeSingular, 'Buddho');
  });
}
