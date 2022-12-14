import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/routing/route_helper.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 790),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        key: UniqueKey(),
        builder: DevicePreview.appBuilder,
        navigatorKey: Get.key,
        title: 'Flutter Task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: Colors.white,
          primaryColor: const Color(0xFFEE6A61),
          fontFamily: "Poppins",
        ),
        initialRoute: RouteHelper.getInitialRoute(),
        getPages: RouteHelper.routes,
      ),
    );
  }
}
