import 'package:palineti/l10n/generated/app_localizations.dart';

import '../../data/morphology/pali_enums.dart';

extension PaliCaseLocalizations on PaliCase {
  String localizedAbbreviation(AppLocalizations l10n) {
    switch (this) {
      case PaliCase.nom:
        return l10n.caseNomAbbr;
      case PaliCase.acc:
        return l10n.caseAccAbbr;
      case PaliCase.ins:
        return l10n.caseInsAbbr;
      case PaliCase.dat:
        return l10n.caseDatAbbr;
      case PaliCase.abl:
        return l10n.caseAblAbbr;
      case PaliCase.gen:
        return l10n.caseGenAbbr;
      case PaliCase.loc:
        return l10n.caseLocAbbr;
      case PaliCase.voc:
        return l10n.caseVocAbbr;
    }
  }

  String localizedName(AppLocalizations l10n) {
    switch (this) {
      case PaliCase.nom:
        return l10n.caseNomName;
      case PaliCase.acc:
        return l10n.caseAccName;
      case PaliCase.ins:
        return l10n.caseInsName;
      case PaliCase.dat:
        return l10n.caseDatName;
      case PaliCase.abl:
        return l10n.caseAblName;
      case PaliCase.gen:
        return l10n.caseGenName;
      case PaliCase.loc:
        return l10n.caseLocName;
      case PaliCase.voc:
        return l10n.caseVocName;
    }
  }
}

extension PaliNumberLocalizations on PaliNumber {
  String localizedAbbreviation(AppLocalizations l10n) {
    switch (this) {
      case PaliNumber.singular:
        return l10n.singularAbbr;
      case PaliNumber.plural:
        return l10n.pluralAbbr;
    }
  }
}
