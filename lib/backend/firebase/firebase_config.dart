import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDdbI7waQOE2nfEXkF-3mJRjC7LBxlGvyI",
            authDomain: "login-page-1ww6ro.firebaseapp.com",
            projectId: "login-page-1ww6ro",
            storageBucket: "login-page-1ww6ro.appspot.com",
            messagingSenderId: "496968628983",
            appId: "1:496968628983:web:1f031a68f24a63645c71f2",
            measurementId: "G-BN70PWJ5FK"));
  } else {
    await Firebase.initializeApp();
  }
}
