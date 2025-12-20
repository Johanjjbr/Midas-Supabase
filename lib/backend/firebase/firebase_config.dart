import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
<<<<<<< HEAD
            apiKey: "AIzaSyDaSxXyQWdRGKOIVVFNJ_bkEjpKswaNG3M",
            authDomain: "midas-e4yz1e.firebaseapp.com",
            projectId: "midas-e4yz1e",
            storageBucket: "midas-e4yz1e.firebasestorage.app",
            messagingSenderId: "326142267843",
            appId: "1:326142267843:web:59de974cc25dac56d76d76"));
=======
            apiKey: "AIzaSyCSsMEE2yTSk8auowMoAs_l0kLR98xKZOQ",
            authDomain: "eats-r60qfx.firebaseapp.com",
            projectId: "eats-r60qfx",
            storageBucket: "eats-r60qfx.firebasestorage.app",
            messagingSenderId: "833616143447",
            appId: "1:833616143447:web:b581203622b24cbe802f12"));
>>>>>>> 1ddf1af (ultimo realizado)
  } else {
    await Firebase.initializeApp();
  }
}
