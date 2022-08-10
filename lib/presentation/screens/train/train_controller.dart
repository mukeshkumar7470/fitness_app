import 'package:get/get.dart';

import '../../../data/models/exercise.dart';
import '../../../services/exercise_service.dart';

class TrainController extends GetxController {
  List<Exercise> exercises = [];

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() {
    exercises = ExerciseService().getExercises();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
