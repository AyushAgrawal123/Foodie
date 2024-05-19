// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD_7V6KjoEQocl2quQ5ccNcxEcsR2_YwgY',
    appId: '1:817014678847:web:c549213c0f0341bb0edf8a',
    messagingSenderId: '817014678847',
    projectId: 'foodie-41df7',
    authDomain: 'foodie-41df7.firebaseapp.com',
    storageBucket: 'foodie-41df7.appspot.com',
    measurementId: 'G-L83Q9R1903',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAc9dNMbDN5n41Vv4zrqdLQS9bEiU1cA7k',
    appId: '1:817014678847:android:879ddea115f6f1d80edf8a',
    messagingSenderId: '817014678847',
    projectId: 'foodie-41df7',
    storageBucket: 'foodie-41df7.appspot.com',
  );
}
