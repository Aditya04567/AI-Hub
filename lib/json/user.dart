// To parse this JSON data, do
//
//     final temperatures = temperaturesFromMap(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';

// Temperatures temperaturesFromMap(String str) => Temperatures.fromMap(json.decode(str));

// String temperaturesToMap(Temperatures data) => json.encode(data.toMap());

class Temperatures {
    final int? userid;
    final String username;
    final String userpassword;

    Temperatures({
        this.userid,
        required this.username,
        required this.userpassword,
    });

    factory Temperatures.fromMap(Map<String, dynamic> json) => Temperatures(
        userid: json["userid"],
        username: json["username"],
        userpassword: json["userpassword"],
    );

    Map<String, dynamic> toMap() => {
        "userid": userid,
        "username": username,
        "userpassword": userpassword,
    };
}
