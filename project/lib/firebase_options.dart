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
    apiKey: 'AIzaSyALFLAvhmN0n6FBVGPvnNFKc9h2HqlTx4k',
    appId: '1:1098309176235:web:870e6831ec0d60dd9120ee',
    messagingSenderId: '1098309176235',
    projectId: 'flutter-9454f',
    authDomain: 'flutter-9454f.firebaseapp.com',
    storageBucket: 'flutter-9454f.appspot.com',
    measurementId: 'G-MT87HC8P3J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJBEB5MpvEwJCH-h3PYGhlwv08Vc_wwXo',
    appId: '1:1098309176235:android:568cddd4be652ef19120ee',
    messagingSenderId: '1098309176235',
    projectId: 'flutter-9454f',
    storageBucket: 'flutter-9454f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCg8pgKooSf1RnxIIFn609Dyrq6nuxqDoo',
    appId: '1:1098309176235:ios:a6e061dcd75c62589120ee',
    messagingSenderId: '1098309176235',
    projectId: 'flutter-9454f',
    storageBucket: 'flutter-9454f.appspot.com',
    iosClientId: '1098309176235-rbcehkub81n68ijemtkrqr7sgljet10d.apps.googleusercontent.com',
    iosBundleId: 'com.example.project',
  );
}
