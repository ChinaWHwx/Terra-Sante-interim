import 'dart:convert';

class Candidate {
  Candidate({
    this.cadId,
    this.cadName,
    this.cadAdresse,
    this.cadNumtel,
  });

  int? cadId;
  String? cadName;
  String? cadAdresse;
  String? cadNumtel;

  factory Candidate.fromJson(Map<String, dynamic> json) => Candidate(
        cadId: json["cad_id"],
        cadName: json["cad_name"],
        cadAdresse: json["cad_Adress"],
        cadNumtel: json["cad_Numtel"],
      );

  Map<String, dynamic> toJson() => {
        "cad_id": cadId,
        "cad_name": cadName,
        "cad_Adresse": cadAdresse,
        "cad_Numtel": cadNumtel,
      };

  static List<Candidate> candidateFromJson(str) =>
      List<Candidate>.from(json.decode(str).map((x) => Candidate.fromJson(x)));

  static String candidateToJson(List<Candidate> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}
