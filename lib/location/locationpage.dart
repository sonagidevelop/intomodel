import 'package:flutter/material.dart';
import 'package:intomodel/location/location_provider.dart';
import 'package:provider/provider.dart';

class LocationPage extends StatelessWidget {
  LocationProvider lp = LocationProvider();

  @override
  Widget build(BuildContext context) {
    final locationprovider = Provider.of<LocationProvider>(context);
    var locationDatas = locationprovider.getLocationList();
    return Scaffold(
      body: Center(
        child: Text(locationDatas[0]),
      ),
    );
  }
}
