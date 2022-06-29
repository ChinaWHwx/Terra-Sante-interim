import 'dart:convert';

class Remuneration {
  Remuneration({
    required this.pharmaExp,
    required this.remAmount,
    required this.remCoef,
    required this.remId,
    required this.userStatus,
  });

  int pharmaExp;
  String remAmount;
  String remCoef;
  int remId;
  String userStatus;

  factory Remuneration.fromJson(Map<String, dynamic> json) => Remuneration(
        pharmaExp: json["pharma_exp"],
        remAmount: json["rem_amount"],
        remCoef: json["rem_coef"],
        remId: json["rem_id"],
        userStatus: json["user_status"],
      );

  Map<String, dynamic> toJson() => {
        "pharma_exp": pharmaExp,
        "rem_amount": remAmount,
        "rem_coef": remCoef,
        "rem_id": remId,
        "user_status": userStatus,
      };

  static List<Remuneration> remunerationFromJson(str) =>
      List<Remuneration>.from(str.map((x) => Remuneration.fromJson(x)));

  static String remunerationToJson(List<Remuneration> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}

List remunerations = [
  Remuneration(
    remId: 1,
    userStatus: "Pharmacien",
    pharmaExp: 0,
    remAmount: "21",
    remCoef: "210",
  ),
  Remuneration(
    remId: 2,
    userStatus: "Pharmacien",
    pharmaExp: 3,
    remAmount: "27",
    remCoef: "210",
  ),
  Remuneration(
    remId: 3,
    userStatus: "Pharmacien",
    pharmaExp: 6,
    remAmount: "29",
    remCoef: "220",
  ),
  Remuneration(
    remId: 4,
    userStatus: "Préparateur",
    pharmaExp: 3,
    remAmount: "25",
    remCoef: "210",
  ),
  Remuneration(
    remId: 5,
    userStatus: "Etudiant",
    pharmaExp: 6,
    remAmount: "26",
    remCoef: "200",
  ),
];
