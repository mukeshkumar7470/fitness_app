import 'package:fitness_app/presentation/screens/train/train_controller.dart';
import 'package:get/get.dart';

class TrainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<TrainController>(TrainController());
  }
}
