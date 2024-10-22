import 'package:flutter/material.dart';
import 'package:pracica1/models/user.dart';
import 'package:pracica1/service/UserService.dart';

class UserViewmodel  extends ChangeNotifier{
 User? _user;
 bool _loading = false;
 String? _message;

 User? get user => _user;
 bool? get loading => _loading;
 String? get message => _message;

 final Userservice userservice = Userservice();

  Future <void> loadUserData() async{
    try {
      final userData=await userservice.loadUserData();
      _user=User.fromJson(userData);
      _message=null;
    } catch (e) {
      _message= 'Error al cargar al usuario $e';
      _user= null;
    }
    _loading=false;
    notifyListeners();
  }
 
}