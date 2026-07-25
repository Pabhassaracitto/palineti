import 'package:flutter/material.dart';
import 'package:palineti/pali_course.dart';
import 'phases/read_listen_screen.dart';
import 'phases/mind_game_screen.dart';
import 'phases/quiz_screen.dart';

class PhaseNavigatorScreen extends StatefulWidget {
  final LessonDay lessonDay;
  final LessonMeta lessonMeta;

  const PhaseNavigatorScreen({
    required this.lessonDay,
    required this.lessonMeta,
    super.key,
  });

  @override
  State<PhaseNavigatorScreen> createState() => _PhaseNavigatorScreenState();
}

class _PhaseNavigatorScreenState extends State<PhaseNavigatorScreen> {
  late PageController _pageController;
  int _currentPhaseIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: widget.lessonDay.currentPhaseIndex,
    );
    _currentPhaseIndex = widget.lessonDay.currentPhaseIndex;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPhase() {
    if (_currentPhaseIndex < widget.lessonDay.phases.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Hoàn thành lesson
      _showCompletionDialog();
    }
  }

  void _previousPhase() {
    if (_currentPhaseIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('🎉 Hoàn thành!'),
        content: Text(
          'Bạn đã hoàn thành ${widget.lessonDay.titleVi}',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx); // Close dialog
              Navigator.pop(context); // Back to previous screen
            },
            child: const Text('Quay lại'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paliBg,
      appBar: AppBar(
        backgroundColor: Color(widget.lessonMeta.colorValue),
        foregroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.lessonDay.titleVi,
              style: const TextStyle(fontSize: 14),
            ),
            Text(
              'Phase ${_currentPhaseIndex + 1}/${widget.lessonDay.phases.length}',
              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: LinearProgressIndicator(
            value: (_currentPhaseIndex + 1) / widget.lessonDay.phases.length,
            backgroundColor: Colors.white.withOpacity(0.3),
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(), // Chỉ dùng button
        onPageChanged: (index) {
          setState(() => _currentPhaseIndex = index);
        },
        itemCount: widget.lessonDay.phases.length,
        itemBuilder: (context, index) {
          final phase = widget.lessonDay.phases[index];
          return _buildPhaseScreen(phase);
        },
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildPhaseScreen(LessonPhase phase) {
    switch (phase.phaseTypeStr) {
      case 'read_listen':
        return ReadListenScreen(
          phase: phase,
          onNext: _nextPhase,
        );
      case 'mind_game':
        return MindGameScreen(
          phase: phase,
          onNext: _nextPhase,
        );
      case 'listening_quiz':
        return QuizScreen(
          phase: phase,
          onNext: _nextPhase,
        );
      default:
        return Center(
          child: Text('Unknown phase type: ${phase.phaseTypeStr}'),
        );
    }
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
          // Previous button
          if (_currentPhaseIndex > 0)
            OutlinedButton.icon(
              onPressed: _previousPhase,
              icon: const Icon(Icons.arrow_back, size: 18),
              label: const Text('Trước'),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.paliGold,
              ),
            )
          else
            const SizedBox(width: 100),

          const Spacer(),

          // Phase indicator
          Text(
            '${_currentPhaseIndex + 1} / ${widget.lessonDay.phases.length}',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),

          const Spacer(),

          // Next button (handled by phase screens)
          const SizedBox(width: 100),
        ],
      ),
    );
  }
}
