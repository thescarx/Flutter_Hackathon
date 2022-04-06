import 'package:abir_sabil/Providers/DzData.dart';
import 'package:abir_sabil/Screens/Auth/Signin.dart';
import 'package:abir_sabil/Screens/Auth/UserType.dart';
import 'package:abir_sabil/Screens/accueil.dart';
import 'package:abir_sabil/Screens/accueil_resto.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'Providers/auth.dart';
import 'Screens/Auth/forgotPassword.dart';
import 'Screens/menu.dart';
import 'Screens/profile.dart';
import 'Screens/restaurant_details.dart';

void main() async {
  Color primaryColor = Color(0xffbd7344);
  Color secondlyColor = Color(0xffa8293c);
  Color thirdlyColor = Color(0xff582e44);
  Color fourthColor = Color(0xff8e7a3d);
  Color fivethcolor = Color(0xffd7b957);

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(MultiProvider(
    providers: [
      ListenableProvider<AuthService>(
        create: (_) => AuthService(),
      ),
      ListenableProvider<DataDz>(
        create: (_) => DataDz(),
      ),
    ],
    child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        home: accueil_resto()// signin()
        ),
  ));
}
