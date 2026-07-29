// packages/pali_course/example/lib/screens/phases/quiz_screen.dart
import 'package:flutter/material.dart';
import 'package:palineti/l10n/generated/app_localizations.dart';
import 'package:palineti/pali_course.dart';

import '../../localization/learning_content_localizations.dart';

class QuizScreen extends StatefulWidget {
  final LessonPhase phase;
  final VoidCallback onNext;

  const QuizScreen({
    required this.phase,
    required this.onNext,
    super.key,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  final Map<int, int> _userAnswers = {}; // questionIndex → selectedOptionIndex
  bool _showExplanation = false;

  QuizQuestion get _currentQuestion =>
      widget.phase.questions![_currentQuestionIndex];

  bool get _hasAnswered => _userAnswers.containsKey(_currentQuestionIndex);
  bool get _isLastQuestion =>
      _currentQuestionIndex == (widget.phase.questions!.length - 1);
  bool get _allAnswered =>
      _userAnswers.length == widget.phase.questions!.length;

  void _selectOption(int optionIndex) {
    if (_hasAnswered) return; // Đã trả lời rồi thì không cho chọn nữa

    setState(() {
      _userAnswers[_currentQuestionIndex] = optionIndex;
      _showExplanation = true;
    });
  }

  void _nextQuestion() {
    if (_isLastQuestion) {
      // Show results
      _showResults();
    } else {
      setState(() {
        _currentQuestionIndex++;
        _showExplanation = false;
      });
    }
  }

  void _previousQuestion() {
    if (_currentQuestionIndex > 0) {
      setState(() {
        _currentQuestionIndex--;
        _showExplanation = _userAnswers.containsKey(_currentQuestionIndex);
      });
    }
  }

  void _showResults() {
    final correctCount = _userAnswers.entries.where((entry) {
      final question = widget.phase.questions![entry.key];
      return entry.value == question.correctIndex;
    }).length;
    final l10n = AppLocalizations.of(context);

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.quizResultsTitle),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              l10n.scoreLabel(correctCount, widget.phase.questions!.length),
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AppColors.paliSaffron,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              correctCount == widget.phase.questions!.length
                  ? l10n.excellentFeedback
                  : correctCount >= widget.phase.questions!.length * 0.7
                      ? l10n.goodFeedback
                      : l10n.tryHarderFeedback,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              widget.onNext(); // Chuyển phase tiếp theo
            },
            child: Text(l10n.continueAction),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final questions = widget.phase.questions ?? [];
    final l10n = AppLocalizations.of(context);
    final transcript = widget.phase.localizedContent(context);
    if (questions.isEmpty) {
      return Center(child: Text(l10n.noQuestions));
    }

    return SafeArea(
      // ← THÊM SafeArea
      child: Column(
        children: [
          // Header
          _buildHeader(),

          // Content
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Transcript
                if (transcript != null) ...[
                  _buildTranscriptCard(transcript),
                  const SizedBox(height: 16),
                ],

                // Question
                _buildQuestionCard(),

                // Explanation (after answered)
                if (_showExplanation) ...[
                  const SizedBox(height: 16),
                  _buildExplanationCard(),
                ],

                // FAB Answers
                if (widget.phase.fabAnswers != null &&
                    widget.phase.fabAnswers!.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  _buildFabAnswers(),
                ],
              ],
            ),
          ),

          // Bottom navigation
          _buildBottomBar(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.paliMaroon.withOpacity(0.1),
        border: Border(
          bottom: BorderSide(
            color: AppColors.paliMaroon.withOpacity(0.3),
          ),
        ),
      ),
      child: Row(
        children: [
          const Icon(Icons.quiz, color: AppColors.paliMaroon),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.phase.localizedTitle(context) ??
                      AppLocalizations.of(context).listeningQuizTitle,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.paliInk,
                  ),
                ),
                Text(
                  AppLocalizations.of(context).questionProgress(
                    _currentQuestionIndex + 1,
                    widget.phase.questions!.length,
                  ),
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          // Progress indicator
          SizedBox(
            width: 40,
            height: 40,
            child: Stack(
              children: [
                CircularProgressIndicator(
                  value: (_currentQuestionIndex + 1) /
                      widget.phase.questions!.length,
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    AppColors.paliMaroon,
                  ),
                ),
                Center(
                  child: Text(
                    '${_currentQuestionIndex + 1}',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTranscriptCard(String transcript) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.paliBg,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.paliDivider),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.hearing, size: 16, color: Colors.grey[600]),
              const SizedBox(width: 6),
              Text(
                AppLocalizations.of(context).transcript,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            transcript,
            style: TextStyle(
              fontSize: 13,
              height: 1.5,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.paliMaroon.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _currentQuestion.questionText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.paliInk,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),
          ...List.generate(
            _currentQuestion.options.length,
            (index) => _buildOptionButton(index),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionButton(int index) {
    final option = _currentQuestion.options[index];
    final isSelected = _userAnswers[_currentQuestionIndex] == index;
    final isCorrect = index == _currentQuestion.correctIndex;
    final showResult = _hasAnswered;

    Color bgColor;
    Color borderColor;
    Color textColor;

    if (!showResult) {
      bgColor = Colors.white;
      borderColor = Colors.grey[300]!;
      textColor = AppColors.paliInk;
    } else {
      if (isCorrect) {
        bgColor = Colors.green.withOpacity(0.1);
        borderColor = Colors.green;
        textColor = Colors.green[800]!;
      } else if (isSelected) {
        bgColor = Colors.red.withOpacity(0.1);
        borderColor = Colors.red;
        textColor = Colors.red[800]!;
      } else {
        bgColor = Colors.grey[100]!;
        borderColor = Colors.grey[300]!;
        textColor = Colors.grey[600]!;
      }
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () => _selectOption(index),
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: borderColor, width: 1.5),
          ),
          child: Row(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: borderColor, width: 2),
                  color: isSelected && showResult
                      ? borderColor
                      : Colors.transparent,
                ),
                child: showResult && isCorrect
                    ? const Icon(Icons.check, size: 16, color: Colors.white)
                    : showResult && isSelected
                        ? const Icon(Icons.close, size: 16, color: Colors.white)
                        : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  option,
                  style: TextStyle(
                    fontSize: 14,
                    color: textColor,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExplanationCard() {
    final isCorrect =
        _userAnswers[_currentQuestionIndex] == _currentQuestion.correctIndex;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isCorrect
            ? Colors.green.withOpacity(0.1)
            : Colors.orange.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isCorrect ? Colors.green : Colors.orange,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                isCorrect ? Icons.check_circle : Icons.info_outline,
                color: isCorrect ? Colors.green : Colors.orange,
              ),
              const SizedBox(width: 8),
              Text(
                isCorrect
                    ? AppLocalizations.of(context).correctAnswer
                    : AppLocalizations.of(context).explanation,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: isCorrect ? Colors.green[800] : Colors.orange[800],
                ),
              ),
            ],
          ),
          // Tạm thời không hiển thị explanation vì QuizQuestion model chưa có field này
          // Nếu cần, thêm vào model sau
        ],
      ),
    );
  }

  Widget _buildFabAnswers() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.paliBg,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.paliGold.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context).answersAndExplanation,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: AppColors.paliInk,
            ),
          ),
          const SizedBox(height: 8),
          ...widget.phase.fabAnswers!.map((answer) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(
                answer.localizedExplanation(context),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[700],
                  height: 1.4,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          if (_currentQuestionIndex > 0)
            OutlinedButton.icon(
              onPressed: _previousQuestion,
              icon: const Icon(Icons.arrow_back, size: 18),
              label: Text(AppLocalizations.of(context).previous),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.paliMaroon,
              ),
            ),
          const Spacer(),
          ElevatedButton(
            onPressed: _hasAnswered ? _nextQuestion : null,
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  _hasAnswered ? AppColors.paliMaroon : Colors.grey,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              _isLastQuestion
                  ? AppLocalizations.of(context).viewResults
                  : AppLocalizations.of(context).nextQuestion,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
