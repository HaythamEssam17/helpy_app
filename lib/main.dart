import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'Controllers/userController.dart';
import 'Helpers/sharedText.dart';
import 'Utils/ui_components.dart';
import 'Views/SplashPage/splashScreenPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserController()),
      ],
      child: MaterialApp(
        title: 'Amazon-EG',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Cairo',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          body: InfoComponents(builder: (context, deviceInfo) {
            SharedText.screenHeight = deviceInfo.screenHeight;
            SharedText.screenWidth = deviceInfo.screenWidth;
            SharedText.deviceType = deviceInfo.deviceType;
            return SplashScreenPage();
          }),
        ),
      ),
    );
  }
}
