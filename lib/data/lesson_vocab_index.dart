// Registry ánh xạ số bài → danh sách từ vựng `kLessonNNVocab`.
//
// Trước đây 892 mục `kLessonNNVocab` là dữ liệu chết: không nơi nào ngoài
// `lib/data` tham chiếu đến chúng. Hệ quả là "bài này dạy từ gì" không có
// định nghĩa, nên cũng không có gì để kiểm chứng khi bài tập bắt dịch một từ
// chưa từng dạy (xem `tools/audit_vocab_coverage.py`).
//
// Đây là điểm truy cập duy nhất để giao diện lấy từ vựng của một bài.

import 'models/pali_vocab_model.dart';
import 'lessons/lesson_01_data.dart';
import 'lessons/lesson_02_data.dart';
import 'lessons/lesson_03_data.dart';
import 'lessons/lesson_04_data.dart';
import 'lessons/lesson_05_data.dart';
import 'lessons/lesson_06_data.dart';
import 'lessons/lesson_07_data.dart';
import 'lessons/lesson_08_data.dart';
import 'lessons/lesson_09_data.dart';
import 'lessons/lesson_10_data.dart';
import 'lessons/lesson_11_data.dart';
import 'lessons/lesson_12_data.dart';
import 'lessons/lesson_13_data.dart';
import 'lessons/lesson_14_data.dart';
import 'lessons/lesson_15_data.dart';
import 'lessons/lesson_16_data.dart';
import 'lessons/lesson_17_data.dart';
import 'lessons/lesson_18_data.dart';
import 'lessons/lesson_19_data.dart';
import 'lessons/lesson_20_data.dart';
import 'lessons/lesson_21_data.dart';
import 'lessons/lesson_22_data.dart';
import 'lessons/lesson_23_data.dart';
import 'lessons/lesson_24_data.dart';
import 'lessons/lesson_25_data.dart';
import 'lessons/lesson_26_data.dart';

/// Danh sách từ vựng bài [lessonNumber] (1–26). Trả về danh sách rỗng nếu
/// số bài ngoài phạm vi.
List<PaliVocabModel> vocabForLesson(int lessonNumber) => switch (lessonNumber) {
      1 => kLesson01Vocab,
      2 => kLesson02Vocab,
      3 => kLesson03Vocab,
      4 => kLesson04Vocab,
      5 => kLesson05Vocab,
      6 => kLesson06Vocab,
      7 => kLesson07Vocab,
      8 => kLesson08Vocab,
      9 => kLesson09Vocab,
      10 => kLesson10Vocab,
      11 => kLesson11Vocab,
      12 => kLesson12Vocab,
      13 => kLesson13Vocab,
      14 => kLesson14Vocab,
      15 => kLesson15Vocab,
      16 => kLesson16Vocab,
      17 => kLesson17Vocab,
      18 => kLesson18Vocab,
      19 => kLesson19Vocab,
      20 => kLesson20Vocab,
      21 => kLesson21Vocab,
      22 => kLesson22Vocab,
      23 => kLesson23Vocab,
      24 => kLesson24Vocab,
      25 => kLesson25Vocab,
      26 => kLesson26Vocab,
      _ => const <PaliVocabModel>[],
    };

/// Tổng số mục từ vựng của bài [lessonNumber].
int vocabCountForLesson(int lessonNumber) => vocabForLesson(lessonNumber).length;
