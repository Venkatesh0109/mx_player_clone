import 'package:flutter/cupertino.dart';

class LayoutProvider extends ChangeNotifier {
  int pageindex = 0;
  changeBottombar(int index) {
    pageindex = index;
    notifyListeners();
  }
}
