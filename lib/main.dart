import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app/config/routers/app_router.dart';
import 'app/config/themes/app_theme.dart';

void main() async {
  // GoRouter.optionURLReflectsImperativeAPIs = true;
  // WidgetsFlutterBinding.ensureInitialized();
  try {
    // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
    //   .then((value) => AppLogger.logInfo("Connected Firebase"))
    //   .catchError((e) => AppLogger.logInfo(e.toString()));
    // await AppLocalNotification.instance.requestNotification();
    // await AppFirebaseNotification.instance.initNotification();
    // await AppFirebaseNotification.instance.initPushNotification();
    runApp(const MyApp());
  } catch (e) {
    runApp(MyAppStartupErrorWidget(error: e));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.defaults(),
      routerConfig: kIsWeb ? AppRouter.routerWeb() : AppRouter.routerMobile(),
    );
  }
}

class MyAppStartupErrorWidget extends StatelessWidget {
  final dynamic error;

  const MyAppStartupErrorWidget({Key? key, required this.error})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Error during app startup:\n$error',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
