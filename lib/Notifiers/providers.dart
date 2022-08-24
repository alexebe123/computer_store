import 'package:computer_store/Notifiers/login_state.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (context) => LoginState(), lazy: false),
];
