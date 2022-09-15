
import 'package:computer_store/Models/profile_model.dart';
import 'package:computer_store/Notifiers/api_services.dart';
import 'package:flutter/cupertino.dart';

class LoginState extends ChangeNotifier {
  late ApiServices _apiService;

  Future load() async {
    _apiService = ApiServices.instance;
    final res = await _apiService.singInWithGoogle();
    return res;
  }

  Future addProfile(ProfileModel profileModel) async {
    _apiService.addAccount(profileModel);
  }
}
