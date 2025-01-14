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
    apiKey: 'AIzaSyBEwYzYqg95xAD1uBVne77mSWAHmSsBikU',
    appId: '1:808420470780:web:8817bba3c7c660915b8c79',
    messagingSenderId: '808420470780',
    projectId: 'project-ilu',
    authDomain: 'project-ilu.firebaseapp.com',
    storageBucket: 'project-ilu.appspot.com',
    measurementId: 'G-1WRKYSBERS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAH2qqwYwbApoZPor-AsishyKQ8cNfxKig',
    appId: '1:808420470780:android:e0b04fbee01ea96a5b8c79',
    messagingSenderId: '808420470780',
    projectId: 'project-ilu',
    storageBucket: 'project-ilu.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPJGfN7KvgS7LvDbLHEjGNnIyzTDPXDY0',
    appId: '1:808420470780:ios:553004c297db53165b8c79',
    messagingSenderId: '808420470780',
    projectId: 'project-ilu',
    storageBucket: 'project-ilu.appspot.com',
    iosBundleId: 'com.wsit.ilu',
  );

}