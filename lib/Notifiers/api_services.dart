import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:computer_store/Models/profile_model.dart';
import 'package:computer_store/res/app_constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ApiServices extends ChangeNotifier {
  static ApiServices? _instance;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  FirebaseFirestore _firestor = FirebaseFirestore.instance;
  User? user;
  List<ProfileModel> list = [];

  ApiServices._internal() {
    getAccount();
  }

  static ApiServices get instance {
    _instance ??= ApiServices._internal();
    return _instance!;
  }

  Future getAccount() async {
    final res = await _firestor
        .collection(AppConstant.coolectionUsers)
        .doc(user!.uid)
        .get();

    list.add(ProfileModel.fromJson(res.data()));
  }

  Future addAccount(ProfileModel profileModel) async {
    final res = await _firestor
        .collection(AppConstant.coolectionUsers)
        .doc(user!.uid)
        .set(profileModel.toJson());
  }

  Future<User?> singInWithGoogle() async {
    GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;
    AuthCredential authCredential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    UserCredential userCredential =
        await _auth.signInWithCredential(authCredential);
    user = userCredential.user;
    return user;
  }
}
