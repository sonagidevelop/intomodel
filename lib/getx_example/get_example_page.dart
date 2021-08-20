import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intomodel/getx_example/get_example_controller.dart';

class LocationAppPage extends GetView<LocationController> {
  Widget infoWidget(double? value) {
    return Container(
      child: Text(value.toString()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("location")),
        body: Container(child: Obx(() {
          var info = controller.locationData.value;
          return Column(
            children: [infoWidget(info.lati), infoWidget(info.long)],
          );
        })));
  }
}
