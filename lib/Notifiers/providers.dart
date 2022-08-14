import 'package:computer_store/Notifiers/firebase_serves.dart';
import 'package:computer_store/Notifiers/login_state.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(
    create: (context) => FirebaseService(),
    lazy: false,
  ),
  ChangeNotifierProvider(create: (context) => LoginState(), lazy: false),
];
