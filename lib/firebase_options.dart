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
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBMBVmymChlw_dpU0Tyhn1cp7nBIonLhfc',
    appId: '1:1009005201901:web:ab8494d0e7c267ad7e7fe4',
    messagingSenderId: '1009005201901',
    projectId: 'flutter-ecommerce-app-39636',
    authDomain: 'flutter-ecommerce-app-39636.firebaseapp.com',
    storageBucket: 'flutter-ecommerce-app-39636.firebasestorage.app',
    measurementId: 'G-L7TRV06T2H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDrxIV0e2Gy9IPJoD_nApv6hfsJXYNCWUM',
    appId: '1:1009005201901:android:b06b1b14f4992f5b7e7fe4',
    messagingSenderId: '1009005201901',
    projectId: 'flutter-ecommerce-app-39636',
    storageBucket: 'flutter-ecommerce-app-39636.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCe33YrwXDbUrB40cwU1_XIjT40sv8LOvo',
    appId: '1:1009005201901:ios:28eadd39f806f3be7e7fe4',
    messagingSenderId: '1009005201901',
    projectId: 'flutter-ecommerce-app-39636',
    storageBucket: 'flutter-ecommerce-app-39636.firebasestorage.app',
    iosBundleId: 'com.example.flutterEcommerceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCe33YrwXDbUrB40cwU1_XIjT40sv8LOvo',
    appId: '1:1009005201901:ios:28eadd39f806f3be7e7fe4',
    messagingSenderId: '1009005201901',
    projectId: 'flutter-ecommerce-app-39636',
    storageBucket: 'flutter-ecommerce-app-39636.firebasestorage.app',
    iosBundleId: 'com.example.flutterEcommerceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBMBVmymChlw_dpU0Tyhn1cp7nBIonLhfc',
    appId: '1:1009005201901:web:e26fc2bf41d747f27e7fe4',
    messagingSenderId: '1009005201901',
    projectId: 'flutter-ecommerce-app-39636',
    authDomain: 'flutter-ecommerce-app-39636.firebaseapp.com',
    storageBucket: 'flutter-ecommerce-app-39636.firebasestorage.app',
    measurementId: 'G-6HTFGBFXK1',
  );
}