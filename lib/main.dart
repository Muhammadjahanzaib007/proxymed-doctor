import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

import 'Controllers/auth_controller.dart';
import 'Provider/Provider.dart';
import 'Views/Splash Screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final authController = Get.put(AuthController());

  PrefsProvider prefsProvider = PrefsProvider();

  void getCurrentPrefs() async {
    prefsProvider.setLoginStatus =
        await prefsProvider.userPreferences.getLoginStatus();
  }

  @override
  void initState() {
    getCurrentPrefs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) {
                return prefsProvider;
              }),
            ],
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: SplashScreen(),
              // FutureBuilder(
              //   future: authController.checkUserLoggedIn(),
              //   builder: (context, dynamic snapshot) {
              //     return snapshot.data;
              //   },
              //   initialData: const SplashScreen(),
              // ),
            ),
          );
        });
  }
}
