import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCJ2OU9M0JYgNUu-EFHQF0ZHbkPXGG4xGo",
            authDomain: "roverreach-d39c1.firebaseapp.com",
            projectId: "roverreach-d39c1",
            storageBucket: "roverreach-d39c1.appspot.com",
            messagingSenderId: "149226399303",
            appId: "1:149226399303:web:bb6f88400c9eeabc75b362",
            measurementId: "G-FPQCTK2KYS"));
  } else {
    await Firebase.initializeApp();
  }
}
