import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sports_flutter_app/screens/homepage.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:
  DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootSportWidget()
    );
  }
}

class RootSportWidget extends StatelessWidget {
  final Future<FirebaseApp> _initialisation = Firebase.initializeApp();
  RootSportWidget({super.key});
  @override
  Widget build(BuildContext context){
    return FutureBuilder(
future: _initialisation,
      builder: (context,snapshot) {
      if(snapshot.hasError){
        print('Something Went Wrong');
      }

      if(snapshot.connectionState == ConnectionState.done){
        return const HomePage();
      }

      return const Center(child:CircularProgressIndicator());
  }
  );
}
}