import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../getx/controllers/users_controller.dart';

class UserDetailScreen extends StatefulWidget {
  String userId;

  UserDetailScreen({Key? key, required this.userId}) : super(key: key);

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  UsersControllers usersController = Get.put(UsersControllers());

  @override
  void initState() {
   // usersController.getUserDetailFromApi(widget.userId);
    usersController.getAllUsersFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('UserId ');
    print(widget.userId);
    return Scaffold(
      body: Obx(
            () => usersController.isDataLoading.value
            ? const Center(
          child: CircularProgressIndicator(),
        )
            : Center(child: Text('Hello')),
      ),
    );
  }
}
