import 'package:fitness_app/presentation/getx/controllers/users_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
          () => UsersControllers(),
    );
  }
}