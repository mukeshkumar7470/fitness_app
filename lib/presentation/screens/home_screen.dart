import 'package:fitness_app/presentation/getx/controllers/users_controller.dart';
import 'package:fitness_app/services/routing_service/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UsersControllers usersController = Get.put(UsersControllers());

  @override
  void initState() {
    usersController.getAllUsersFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => usersController.isDataLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (ctx, i) {
                  return ListTile(
                    onTap: () {
                      context.pushNamed(userDetailPage, params: {
                        'userId': usersController.user!.data![i].id!
                      });
                    },
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          NetworkImage(usersController.user!.data![i].picture!),
                    ),
                    title: Text(
                        '${usersController.user!.data![i].title!} ${usersController.user!.data![i].firstName!} ${usersController.user!.data![i].lastName!}'),
                    subtitle: Text(usersController.user!.data![i].id!),
                  );
                },
                itemCount: usersController.user!.data!.length),
      ),
    );
  }
}
