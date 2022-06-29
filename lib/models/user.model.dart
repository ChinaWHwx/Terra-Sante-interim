import 'dart:convert';

class User {
  User({
    this.userBirthdate,
    this.userEmail,
    this.userEmail2,
    this.userEmail2Conf,
    this.userEmailConf,
    this.userFname,
    this.userId,
    this.userLastLoginDate,
    this.userName,
    this.userNationality,
    this.userPassword,
    this.userPhone,
    this.userPhone2,
    this.userPhone2Conf,
    this.userPhone3,
    this.userPhone3Conf,
    this.userPhoneConf,
    this.userProfilePic,
    this.userProfileValidated,
    this.userRegistrationDate,
    this.userType,
  });

  String? userBirthdate;
  String? userEmail;
  dynamic userEmail2;
  int? userEmail2Conf;
  int? userEmailConf;
  String? userFname;
  int? userId;
  DateTime? userLastLoginDate;
  String? userName;
  dynamic userNationality;
  String? userPassword;
  String? userPhone;
  dynamic userPhone2;
  int? userPhone2Conf;
  dynamic userPhone3;
  int? userPhone3Conf;
  int? userPhoneConf;
  dynamic userProfilePic;
  int? userProfileValidated;
  DateTime? userRegistrationDate;
  String? userType;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userBirthdate: json["user_birthdate"],
        userEmail: json["user_email"],
        userEmail2: json["user_email2"],
        userEmail2Conf: json["user_email2_conf"],
        userEmailConf: json["user_email_conf"],
        userFname: json["user_fname"],
        userId: json["user_id"],
        userLastLoginDate: json["user_last_login_date"] == null
            ? null
            : DateTime.parse(json["user_last_login_date"]),
        userName: json["user_name"],
        userNationality: json["user_nationality"],
        userPassword: json["user_password"],
        userPhone: json["user_phone"],
        userPhone2: json["user_phone2"],
        userPhone2Conf: json["user_phone2_conf"],
        userPhone3: json["user_phone3"],
        userPhone3Conf: json["user_phone3_conf"],
        userPhoneConf: json["user_phone_conf"],
        userProfilePic: json["user_profile_pic"],
        userProfileValidated: json["user_profile_validated"],
        userRegistrationDate: json["user_registration_date"] == null
            ? null
            : DateTime.parse(json["user_registration_date"]),
        userType: json["user_type"],
      );

  Map<String, dynamic> toJson() => {
        "user_birthdate": userBirthdate,
        "user_email": userEmail,
        "user_email2": userEmail2,
        "user_email2_conf": userEmail2Conf,
        "user_email_conf": userEmailConf,
        "user_fname": userFname,
        "user_id": userId,
        "user_last_login_date": userLastLoginDate == null
            ? null
            : userLastLoginDate!.toIso8601String(),
        "user_name": userName,
        "user_nationality": userNationality,
        "user_password": userPassword,
        "user_phone": userPhone,
        "user_phone2": userPhone2,
        "user_phone2_conf": userPhone2Conf,
        "user_phone3": userPhone3,
        "user_phone3_conf": userPhone3Conf,
        "user_phone_conf": userPhoneConf,
        "user_profile_pic": userProfilePic,
        "user_profile_validated": userProfileValidated,
        "user_registration_date": userRegistrationDate == null
            ? null
            : userRegistrationDate!.toLocal(),
        "user_type": userType,
      };

  static List<User> userFromJson(str) =>
      List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

  static String userToJson(List<User> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}
