import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _Phonenumber = '';
  String get Phonenumber => _Phonenumber;
  set Phonenumber(String value) {
    _Phonenumber = value;
  }

  // DateTime _currentdate = null;
  // DateTime get currentdate => _currentdate;
  // set currentdate(DateTime value){
  //   _currentdate = value;
  // }

}
