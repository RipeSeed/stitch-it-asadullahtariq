import 'package:flutter/material.dart';

class StitchingModal extends ChangeNotifier {
  String _stitchingFor = '';
  String _stitichingType = '';
  String _stitchingSize = '';
  String _stitchingDuration = '';
  String _stitchingPrice = '';
  String _stitchingTailer = '';
  int _stitchinStatus = 0;

  Map get stitchingDetail => {
        "stitichingFor": _stitchingFor,
        "stitchingType": _stitichingType,
        "stitchingSize": _stitchingSize,
        "stitchingDuration": _stitchingDuration,
        'stitichingPrice': _stitchingPrice,
        "stitchingTailer": _stitchingTailer,
        "stitchingStatus": _stitchinStatus,
      };

  String get stitchingFor => _stitchingFor;

  String get stitchingType => _stitichingType;

  String get stitchingSize => _stitchingSize;

  String get stitchingDuration => _stitchingDuration;

  String get stitchingPrice => _stitchingPrice;

  String get stitchingTailer => _stitchingTailer;

  int get stitchingStatus => _stitchinStatus;

  void setStitichingFor(String sFor) {
    _stitchingFor = sFor;
    notifyListeners();
  }

  void setStitchingType(String sType) {
    _stitichingType = sType;
    notifyListeners();
  }

  void setStitchingSize(String sSize) {
    _stitchingSize = sSize;
    notifyListeners();
  }

  void setStitchingDuration(String sDuration) {
    _stitchingDuration = sDuration;
    notifyListeners();
  }

  void setStitichingPrice(String sPrice) {
    _stitchingPrice = sPrice;
    notifyListeners();
  }

  void setStitchingTailer(String sTailer) {
    _stitchingTailer = sTailer;
    notifyListeners();
  }

  void setStitchingStatus(int sStatus) {
    _stitchinStatus = sStatus;
    notifyListeners();
  }
}
