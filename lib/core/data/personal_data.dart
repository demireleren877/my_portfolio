class PersonalData {
  static Map<String, String> personalInfos = {
    'Country:': 'Turkey',
    'City:': 'Istanbul',
    'Age:': '21',
  };

  static List<SkillModel> codingSkills = [
    SkillModel(skillPercent: .65, skillName: 'Dart'),
    SkillModel(skillPercent: .70, skillName: 'C# Programming'),
    SkillModel(skillPercent: .75, skillName: 'C Programming'),
    SkillModel(skillPercent: .40, skillName: 'HTML'),
    SkillModel(skillPercent: .30, skillName: 'CSS'),
  ];

  static List<SkillModel> skills = [
    SkillModel(
      skillName: 'Flutter',
      skillPercent: .75,
    ),
    SkillModel(
      skillName: 'Firebase',
      skillPercent: .65,
    ),
    SkillModel(
      skillName: '.Net Core',
      skillPercent: .60,
    ),
  ];
}

class SkillModel {
  double skillPercent;
  String skillName;
  SkillModel({
    required this.skillPercent,
    required this.skillName,
  });
}
