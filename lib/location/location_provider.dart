import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationProvider with ChangeNotifier {
  List _locations = ['0', '0'];

  List getLocationList() {
    _getLocationData();
    return _locations;
  }

  void _getLocationData() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      String lati = position.latitude.toString();
      String long = position.longitude.toString();

      _locations[0] = lati;
      _locations[1] = long;
      print(position);
      notifyListeners();
    } catch (e) {
      List err = ['err'];
      print(err);
    }
  }
}
