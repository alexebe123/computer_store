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
  final FirebaseFirestore _firestor = FirebaseFirestore.instance;

  User? user;
  List<ProfileModel> list = [];

  ApiServices._internal() {
    getAccount();
  }

  static ApiServices get instance {
    _instance ??= ApiServices._internal();
    return _instance!;
  }

  Future getAccount() async {}

  Future<DocumentReference<Map<String, dynamic>>> addAccount(
      ProfileModel profileModel) async {
    await _auth.createUserWithEmailAndPassword(
        email: profileModel.email, password: profileModel.password);
    final res = await _firestor
        .collection(AppConstant.coolectionUsers)
        .add(profileModel.toJson());
    return res;
  }

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> logIn(
      ProfileModel profileModel) async {
    final res = await _firestor
        .collection('Users')
        .where('email', isEqualTo: profileModel.email)
        .get();
    return res.docs;
  }

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>>
      logInWithEmailAndPassword(ProfileModel profileModel) async {
    final res = await _firestor
        .collection('Users')
        .where('email', isEqualTo: profileModel.email)
        .where('password', isEqualTo: profileModel.password)
        .get();
    return res.docs;
  }

  Future<User?> singInWithGoogle() async {
    ProfileModel profileModel = ProfileModel.empty();
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
    profileModel.email = user!.email!;
    final res = await logIn(profileModel);
    if (res.isEmpty) {
      profileModel.name = user!.displayName!;
      await _firestor
          .collection(AppConstant.coolectionUsers)
          .add(profileModel.toJson());
    }
    return user;
  }
}
