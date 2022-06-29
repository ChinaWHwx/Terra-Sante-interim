import 'dart:convert';

class Pharmacie {
  Pharmacie({
    this.phId,
    this.phName,
    this.phAdresse,
    this.phNumtel,
  });

  int? phId;
  String? phName;
  String? phAdresse;
  String? phNumtel;

  factory Pharmacie.fromJson(Map<String, dynamic> json) => Pharmacie(
        phId: json["ph_id"],
        phName: json["ph_name"],
        phAdresse: json["ph_Adress"],
        phNumtel: json["ph_Numtel"],
      );

  Map<String, dynamic> toJson() => {
        "ph_id": phId,
        "ph_name": phName,
        "ph_Adresse": phAdresse,
        "ph_Numtel": phNumtel,
      };

  static List<Pharmacie> pharmacieFromJson(str) =>
      List<Pharmacie>.from(json.decode(str).map((x) => Pharmacie.fromJson(x)));

  static String pharmacieToJson(List<Pharmacie> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}

List<Pharmacie> listPharma = [
  Pharmacie(
      phId: 1,
      phName: "Pharmacie du centre",
      phAdresse: "88 rue du Général de Gaulle, 51100 Reims, France",
      phNumtel: "0777887788"),
  Pharmacie(
      phId: 1,
      phName: "Pharmacie du centre",
      phAdresse: "88 rue du Général de Gaulle, 51100 Reims, France",
      phNumtel: "0777887788"),
  Pharmacie(
      phId: 1,
      phName: "Pharmacie du centre",
      phAdresse: "88 rue du Général de Gaulle, 51100 Reims, France",
      phNumtel: "0777887788"),
  Pharmacie(
      phId: 1,
      phName: "Pharmacie du centre",
      phAdresse: "88 rue du Général de Gaulle, 51100 Reims, France",
      phNumtel: "0777887788")
];
