import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intomodel/example2/counterapp.dart';
import 'package:intomodel/getx_example/get_example_controller.dart';
import 'package:intomodel/location/location_provider.dart';
import 'package:intomodel/location/locationpage.dart';
import 'package:intomodel/screens/simplepage.dart';
import 'package:provider/provider.dart';

import 'getx_example/get_example_page.dart';

void main() {
  runApp(SimpleApp());
}

class SimpleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        Get.put(LocationController());
      }),
      home: LocationAppPage(),
    );
  }
}
