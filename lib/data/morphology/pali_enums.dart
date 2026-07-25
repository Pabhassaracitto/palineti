/// Tám biến cách (cases) trong tiếng Pāḷi
enum PaliCase {
  nom, // Chủ cách (CC) — Nominative: chủ ngữ
  acc, // Đối cách (ĐC) — Accusative: tân ngữ
  ins, // Sử dụng cách (SDC) — Instrumental: bằng/với/nhờ
  dat, // Cách dữ (CĐC) — Dative: cho/đến
  abl, // Xuất xứ cách (XXC) — Ablative: từ/khỏi
  gen, // Sở thuộc cách (STC) — Genitive: của
  loc, // Định sở cách (ĐSC) — Locative: ở/tại/trong
  voc, // Hô cách (HC) — Vocative: gọi/ơi
}

/// Số (number)
enum PaliNumber {
  singular, // Số ít
  plural,   // Số nhiều
}

/// Lớp biến cách (declension class) — thêm dần theo lesson
enum DeclensionClass {
  masc_a,    // Nam tánh tận cùng "-a" — Lesson 1-5
  fem_aa,    // Nữ tánh tận cùng "-ā" — Lesson 6
  neut_a,    // Trung tánh tận cùng "-a" — Lesson 5
  masc_i,    // Nam tánh tận cùng "-i" — Lesson 8
  fem_i,     // Nữ tánh tận cùng "-i" — Lesson 9
  masc_i_long, // Nam tánh tận cùng "-ī" — Lesson 10
  masc_u,    // Nam tánh tận cùng "-u" — Lesson 11
  masc_u_long, // Nam tánh tận cùng "-ū" — Lesson 11
  irregular, // Bất quy tắc — Lesson 17-19
}

/// Nhân xưng động từ
enum PaliPerson {
  first,  // Ngôi 1: Ahaṃ/Mayaṃ
  second, // Ngôi 2: Tvaṃ/Tumhe
  third,  // Ngôi 3: So/Sā/Te
}

/// Thì động từ (thêm dần)
enum PaliTense {
  present, // Hiện tại — Lesson 1-4
  aorist,  // Quá khứ — Lesson 7
  future,  // Tương lai — Lesson 9
  imperfect, // Bất thành khứ — Lesson 19
}

/// Extension tiện ích — tên viết tắt tiếng Việt
extension PaliCaseVI on PaliCase {
  String get abbreviationVI {
    switch (this) {
      case PaliCase.nom: return 'CC';
      case PaliCase.acc: return 'ĐC';
      case PaliCase.ins: return 'SDC';
      case PaliCase.dat: return 'CĐC';
      case PaliCase.abl: return 'XXC';
      case PaliCase.gen: return 'STC';
      case PaliCase.loc: return 'ĐSC';
      case PaliCase.voc: return 'HC';
    }
  }

  String get fullNameVI {
    switch (this) {
      case PaliCase.nom: return 'Chủ cách';
      case PaliCase.acc: return 'Đối cách';
      case PaliCase.ins: return 'Sử dụng cách';
      case PaliCase.dat: return 'Cách dữ';
      case PaliCase.abl: return 'Xuất xứ cách';
      case PaliCase.gen: return 'Sở thuộc cách';
      case PaliCase.loc: return 'Định sở cách';
      case PaliCase.voc: return 'Hô cách';
    }
  }
}

extension PaliNumberVI on PaliNumber {
  String get nameVI => this == PaliNumber.singular ? 'số ít' : 'số nhiều';
}
