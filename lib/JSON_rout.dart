//import 'package:flutter/material.dart';
//
//class Post {
//  final String temperature, rain, humidity, sunrise, sunset, updateDate;
//
//  Post({
//    this.temperature,
//    this.rain,
//    this.humidity,
//    this.sunrise,
//    this.sunset,
//    this.updateDate,
//  });
//
//  factory Post.fromJson(Map<String, dynamic> json) {
//    return new Post(
//      temperature: json['metcheckData']['forecastLocation']['forecast']['temperature'].toString(),
//      rain: json['metcheckData']['forecastLocation']['forecast']['rain'].toString(),
//      humidity:json['metcheckData']['forecastLocation']['forecast']['humidity'].toString(),
//      sunrise: json['metcheckData']['forecastLocation']['forecast']['sunrise'].toString(),
//      sunset: json['metcheckData']['forecastLocation']['forecast']['sunset'].toString(),
//      updateDate: json['metcheckData']['forecastLocation']['forecast']['utcTime'].toString(),
//    );
//  }
//}