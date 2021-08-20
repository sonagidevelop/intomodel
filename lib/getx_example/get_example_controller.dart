import 'package:get/get.dart';

import 'get_example_model.dart';
import 'get_example_repository.dart';

class LocationController extends GetxController {
  late LocationRepository _locationRepository;
  Rx<LocationModel> locationData = LocationModel().obs;

  @override
  void onInit() {
    super.onInit();
    _locationRepository = LocationRepository();
    fetchLocationState();
  }

  void fetchLocationState() async {
    var result = await _locationRepository.fetchLocationData();
    if (result != null) {
      locationData(result);
    }
  }
}
