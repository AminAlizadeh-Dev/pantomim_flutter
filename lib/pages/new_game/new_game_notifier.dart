import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pantomim_flutter/models/match_model.dart';
import 'package:pantomim_flutter/pages/round/round_page.dart';
import 'package:stacked/stacked.dart';

class NewGameVM extends BaseViewModel {
  MatchModel item;
  final GlobalKey<ScaffoldState> _scaffoldKey;
  final BuildContext context;

  NewGameVM(this._scaffoldKey, this.context);

  MatchModel get teams => item ?? [];

  Future sendDataToServer(String teamName) async {
    setBusy(true);
    notifyListeners();
    await Future.delayed(Duration(seconds: 5));

    if (teamName == "hamid") {
      print("data fetched");
      setBusy(false);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => RoundPage()));
    } else {
      setBusy(false);
      notifyListeners();
      setError(error);
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text("khat to saret"),
        backgroundColor: Colors.red,
      ));
      throw "data wrong";
    }
  }
}
