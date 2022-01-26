import 'package:flutter/foundation.dart';

class MyModel extends ChangeNotifier {
  var productName = "";
  MyModel();

  notifyListeners();
}
