import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBxf6FULoxMNIazO2HBm2y8TLvCBBbgJ-A",
            authDomain: "projetoapp-1ece5.firebaseapp.com",
            projectId: "projetoapp-1ece5",
            storageBucket: "projetoapp-1ece5.appspot.com",
            messagingSenderId: "351764848773",
            appId: "1:351764848773:web:703f034b18bd1a23c209ec"));
  } else {
    await Firebase.initializeApp();
  }
}
