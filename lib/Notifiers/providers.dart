
import 'package:computer_store/Notifiers/api_serves.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(
    create: (context) => ApiService(),
    lazy: false,
  ),
 
];
