import 'package:get/get.dart';
import 'package:projectecommerce/utils/helpers/network.manager.dart';


class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
