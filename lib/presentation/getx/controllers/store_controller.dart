import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StoreController extends GetxController {

  final storeName = 'Thick Shake'.obs;
  final followerCount = 0.obs;
  final storeStatus = true.obs;
  final followerList = [].obs;
  final storeNameEditingController = TextEditingController();
  final followerController = TextEditingController();
  int storeFollowerCount = 0;

  static StoreController get to => Get.find();


  void incrementStoreFollowers() {
    storeFollowerCount++;
    update();
  }

  updateStoreName(String name) {
    storeName(name);
  }

  updateFollowerCount() {
    followerCount(followerCount.value + 1);
  }

  void storeStatusOpen(bool isOpen) {
    storeStatus(isOpen);
  }

  updateFollowerList(List<String> list) {
    followerList.assignAll(list);
  }

  addNewFollower(String name) {
    followerList.add(name);
  }


  @override
  void dispose() {
    storeNameEditingController.dispose();
    super.dispose();
  }
}