import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDaSxXyQWdRGKOIVVFNJ_bkEjpKswaNG3M",
            authDomain: "midas-e4yz1e.firebaseapp.com",
            projectId: "midas-e4yz1e",
            storageBucket: "midas-e4yz1e.firebasestorage.app",
            messagingSenderId: "326142267843",
            appId: "1:326142267843:web:59de974cc25dac56d76d76"));
  } else {
    await Firebase.initializeApp();
  }
}
