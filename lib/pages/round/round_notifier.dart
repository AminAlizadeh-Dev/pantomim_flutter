import 'package:pantomim_flutter/local_data.dart';
import 'package:pantomim_flutter/models/team_model.dart';
import 'package:stacked/stacked.dart';

// class RoundVm extends BaseViewModel {
//   List<TeamModel> _teams;
//   List<TeamModel> get teams => _teams ?? [];
//
//   Future getItems() async {
//     await Future.delayed(Duration(seconds: 2));
//     _teams = teamData();
//     notifyListeners();
//   }
//
// check() {
//   bool a = true;
//
//   if (a) {}
//
//   String s = "a";
//
//   if (s == "b") {}
// }
//   void sendDataToServer() {
//     //show loading
//     //send data to server
//     //show result
//     //show error
//     //go to next page
//   }
// }

class RoundVm extends FutureViewModel<List<TeamModel>> {
  @override
  Future<List<TeamModel>> futureToRun() async {
    return teamData();
  }
}
