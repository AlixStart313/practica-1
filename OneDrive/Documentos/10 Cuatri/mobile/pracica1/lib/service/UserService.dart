import 'dart:convert';

import 'package:flutter/services.dart';

class Userservice {

 Future<Map<String, dynamic>> loadUserData() async{
  try {
    final String response = await rootBundle.loadString('assets/user.json');
    final data = json.decode(response);
    print(data);
    return json.decode(data);
  } catch (e) {
    print(e);
    throw Exception('Error loading data: $e');
  }
 }

}