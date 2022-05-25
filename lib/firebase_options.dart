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
    apiKey: 'AIzaSyBIqoZ58iRsYgmhuzQlvlPlRi6jiutQc3Y',
    appId: '1:657404748133:web:5f39b0baf5d2c9b4a2818c',
    messagingSenderId: '657404748133',
    projectId: 'fast-database-sync',
    authDomain: 'fast-database-sync.firebaseapp.com',
    storageBucket: 'fast-database-sync.appspot.com',
    measurementId: 'G-QJ8WLD7CCW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyABhFlFGQJgT3BJrC21x6Hn2rj5p7dcVDI',
    appId: '1:657404748133:android:82c569bef2cdf05aa2818c',
    messagingSenderId: '657404748133',
    projectId: 'fast-database-sync',
    storageBucket: 'fast-database-sync.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDLjkDlJjlLIIWwWR9IVyFlfohP_yqQGjI',
    appId: '1:657404748133:ios:e01966b9a2f37e87a2818c',
    messagingSenderId: '657404748133',
    projectId: 'fast-database-sync',
    storageBucket: 'fast-database-sync.appspot.com',
    iosClientId: '657404748133-1ob9hbnupkmi43i8tm7st68ao0iv5svl.apps.googleusercontent.com',
    iosBundleId: 'com.example.fastDatabaseSync',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDLjkDlJjlLIIWwWR9IVyFlfohP_yqQGjI',
    appId: '1:657404748133:ios:e01966b9a2f37e87a2818c',
    messagingSenderId: '657404748133',
    projectId: 'fast-database-sync',
    storageBucket: 'fast-database-sync.appspot.com',
    iosClientId: '657404748133-1ob9hbnupkmi43i8tm7st68ao0iv5svl.apps.googleusercontent.com',
    iosBundleId: 'com.example.fastDatabaseSync',
  );
}
