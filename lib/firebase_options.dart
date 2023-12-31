// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyAk_azZQDwzTy_6nFBjfgBX6YuWDLSFx0U',
    appId: '1:1026832355391:web:a5b2a290145be34486e88a',
    messagingSenderId: '1026832355391',
    projectId: 'flutter-test-v1-889b2',
    authDomain: 'flutter-test-v1-889b2.firebaseapp.com',
    storageBucket: 'flutter-test-v1-889b2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGdBC2jNGoLzLVV948KS2kmtc6X1Vfw1s',
    appId: '1:1026832355391:android:43e39a1ac8bf163186e88a',
    messagingSenderId: '1026832355391',
    projectId: 'flutter-test-v1-889b2',
    storageBucket: 'flutter-test-v1-889b2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5jsca8UtMfczB7Wdmo1v1gWhqL_umWjA',
    appId: '1:1026832355391:ios:7e119639507bf98b86e88a',
    messagingSenderId: '1026832355391',
    projectId: 'flutter-test-v1-889b2',
    storageBucket: 'flutter-test-v1-889b2.appspot.com',
    iosBundleId: 'com.example.flutterTestV1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD5jsca8UtMfczB7Wdmo1v1gWhqL_umWjA',
    appId: '1:1026832355391:ios:cc747186224fd9b286e88a',
    messagingSenderId: '1026832355391',
    projectId: 'flutter-test-v1-889b2',
    storageBucket: 'flutter-test-v1-889b2.appspot.com',
    iosBundleId: 'com.example.flutterTestV1.RunnerTests',
  );
}
