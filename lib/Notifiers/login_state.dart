import 'dart:developer';

import 'package:computer_store/Models/profile_model.dart';
import 'package:computer_store/Notifiers/api_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginState extends ChangeNotifier {
  late ApiServices _apiService;

  Future lode() async {
    _apiService = ApiServices.instance;
    final res = await _apiService.singInWithGoogle();
    await _apiService.getAccount();
    return res;
  }

  Future addProfile(ProfileModel profileModel) async {
    _apiService.addAccount(profileModel);
  }
}
