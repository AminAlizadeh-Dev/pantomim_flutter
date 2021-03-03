import 'package:pantomim_flutter/local_data.dart';
import 'package:pantomim_flutter/models/team_model.dart';
import 'package:stacked/stacked.dart';

class RoundVm extends BaseViewModel {
  List<TeamModel> teams = teamData();

  void sendDataToServer(){
    //show loading
    //send data to server
    //show result
    //show error
    //go to next page
  }
}
