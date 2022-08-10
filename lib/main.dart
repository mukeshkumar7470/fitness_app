import 'package:fitness_app/presentation/getx/controllers/GenderSelectionController.dart';
import 'package:fitness_app/services/routing_service/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'core/theme/theme.dart';

void main() async {
  final router = MyRouter();
  GoRouter appRouter = await router.appRouter();
  runApp(MyApp(appRouter: appRouter));
}

class MyApp extends StatelessWidget {
  GoRouter appRouter;

  MyApp({Key? key, required this.appRouter}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Fitness App',
          theme: ApplicationTheme.getAppThemeData(),
          routeInformationProvider: appRouter.routeInformationProvider,
          routeInformationParser: appRouter.routeInformationParser,
          routerDelegate: appRouter.routerDelegate,
        );
      },
    );
  }
}
