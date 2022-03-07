// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBGrFDPs3OEeQR0wZ1rEfAoYxntMH8KeWk',
    appId: '1:217931694578:web:e9876c74d5c938aca3ab6b',
    messagingSenderId: '217931694578',
    projectId: 'erendemirelcom',
    authDomain: 'erendemirelcom.firebaseapp.com',
    storageBucket: 'erendemirelcom.appspot.com',
    measurementId: 'G-0KTSDSZ2HF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBlibFksGZJQ5Ps36bRRh12rO-oGaE0qus',
    appId: '1:217931694578:android:77a3fff1d4633c25a3ab6b',
    messagingSenderId: '217931694578',
    projectId: 'erendemirelcom',
    storageBucket: 'erendemirelcom.appspot.com',
  );
}
