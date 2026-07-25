import 'package:flutter/material.dart';
import 'package:palineti/pali_course.dart';

class VocabCardWidget extends StatelessWidget {
  final PaliVocabModel vocab;
  final VoidCallback? onTap;

  const VocabCardWidget({
    required this.vocab,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: AppColors.paliGold.withOpacity(0.3),
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Dòng 1: Hình thức + phiên âm + paradigm
              Row(
                children: [
                  Text(
                    vocab.nominativeSingular,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.paliInk,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '/${vocab.pronunciation}/',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const Spacer(),
                  _buildParadigmChip(vocab.paradigmId),
                ],
              ),
              const SizedBox(height: 4),

              // Dòng 2: Nghĩa
              Text(
                vocab.wordVi,
                style: const TextStyle(
                  fontSize: 15,
                  color: AppColors.paliSaffron,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                vocab.wordEn,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[500],
                ),
              ),

              // Dòng 3: Ví dụ (nếu có)
              if (vocab.examplePali != null) ...[
                const SizedBox(height: 8),
                const Divider(height: 1),
                const SizedBox(height: 8),
                Text(
                  vocab.examplePali!,
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppColors.paliInk,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                if (vocab.exampleVi != null)
                  Text(
                    vocab.exampleVi!,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
              ],

              // Quick forms (Nom/Acc)
              if (vocab.paradigmId == 'masc_a') ...[
                const SizedBox(height: 8),
                _buildQuickForms(vocab),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildParadigmChip(String paradigmId) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.paliGold.withOpacity(0.15),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColors.paliGold.withOpacity(0.5)),
      ),
      child: Text(
        paradigmId,
        style: const TextStyle(
          fontSize: 10,
          color: AppColors.paliGold,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildQuickForms(PaliVocabModel vocab) {
    final forms = [
      ('CC sg', vocab.getForm(PaliCase.nom, PaliNumber.singular)),
      ('CC pl', vocab.getForm(PaliCase.nom, PaliNumber.plural)),
      ('ĐC sg', vocab.getForm(PaliCase.acc, PaliNumber.singular)),
      ('ĐC pl', vocab.getForm(PaliCase.acc, PaliNumber.plural)),
    ];

    return Wrap(
      spacing: 6,
      runSpacing: 4,
      children: forms.map((entry) {
        final (label, form) = entry;
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          decoration: BoxDecoration(
            color: AppColors.paliBg,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColors.paliDivider),
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$label: ',
                  style: const TextStyle(
                    fontSize: 10,
                    color: AppColors.paliSaffron,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: form,
                  style: const TextStyle(
                    fontSize: 11,
                    color: AppColors.paliInk,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
