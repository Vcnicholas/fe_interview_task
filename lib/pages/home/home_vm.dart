import 'package:fe_interview_task/pages/base/base_vm.dart';

class HomeViewModel extends BaseViewModel {
  int selectedoption = -1;
  List<String> optionDes = [
    'The peace in the\nearly mornings',
    'The magical\ngold hours',
    'Wind-down time\nafter dinners',
    'The serenity past\nmidnight'
  ];
  List<String> options = ['A', 'B', 'C', 'D'];

  void selectOption (index){
    selectedoption = index;
    notifyListeners();
  }
}