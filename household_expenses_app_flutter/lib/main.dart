import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:household_expenses_app_flutter/domain/hive_usecase.dart';
import 'package:household_expenses_app_flutter/ui/main/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Firebase.initializeApp();
  await HiveUseCase().init();

  // try {
  //   final user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: 'csg19921006@gmail.com', password: '72134130');
  //   print(user);
  // } catch (e) {
  //   print(e);
  // }
  // try {
  //   final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: 'csg19921006@gmail.com', password: '72134130');
  //
  //   print(user);
  // } catch (e) {
  //   print(e);
  // }
  //
  // FirebaseAuth.instance.authStateChanges().listen((User? user) {
  //   if (user == null) {
  //     print('User is currently signed out!');
  //   } else {
  //     print('User is signed in!');
  //   }
  // });
  runApp(const MyApp());
}
