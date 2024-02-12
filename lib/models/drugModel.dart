class Drug {
  final String name;
  final String image;
  final String molecularFormula;
  final String iupacname;
  final String about;
  final String mechanism;
  final String uses;
  final String effects;

  Drug(
      {required this.name,
      required this.image,
      required this.molecularFormula,
      required this.iupacname,
      required this.about,
      required this.mechanism,
      required this.uses,
      required this.effects});

  factory Drug.fromMap(Map<String, dynamic> map) {
    return Drug(
        name: map["name"],
        image: map["image"],
        molecularFormula: map["molecularFormula"],
        iupacname: map["iupacname"],
        about: map["about"],
        mechanism: map["mechanism"],
        uses: map["uses"],
        effects: map["effects"]);
  }

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "image": image,
      "molecularFormula": molecularFormula,
      "iupacname": iupacname,
      "about": about,
      "mechanism": mechanism,
      "uses": uses,
      "effects": effects
    };
  }
}
