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
    apiKey: 'AIzaSyALaI39nNaaRu3u0-PJXksfQHXFCODdhKg',
    appId: '1:443018308784:web:209420e6ba8bb0ac691f75',
    messagingSenderId: '443018308784',
    projectId: 'apptime-d7026',
    authDomain: 'apptime-d7026.firebaseapp.com',
    storageBucket: 'apptime-d7026.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcH3rHh4Hi2zNheVuPvn7LIBSPcN9ehtU',
    appId: '1:443018308784:android:3e3469878d99ab56691f75',
    messagingSenderId: '443018308784',
    projectId: 'apptime-d7026',
    storageBucket: 'apptime-d7026.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAXxztkDvm82sZIfkmvlzC7l20zWu3yj_w',
    appId: '1:443018308784:ios:b1063df6a358c2a3691f75',
    messagingSenderId: '443018308784',
    projectId: 'apptime-d7026',
    storageBucket: 'apptime-d7026.appspot.com',
    androidClientId: '443018308784-0lc6ghlos2uh0b515bi58n7omue2u71l.apps.googleusercontent.com',
    iosClientId: '443018308784-n1o3ahmlsq2lli1umga6rla30bcn7oq7.apps.googleusercontent.com',
    iosBundleId: 'newapp.example.newApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAXxztkDvm82sZIfkmvlzC7l20zWu3yj_w',
    appId: '1:443018308784:ios:3f2ac9b9d5af5435691f75',
    messagingSenderId: '443018308784',
    projectId: 'apptime-d7026',
    storageBucket: 'apptime-d7026.appspot.com',
    androidClientId: '443018308784-0lc6ghlos2uh0b515bi58n7omue2u71l.apps.googleusercontent.com',
    iosClientId: '443018308784-po4cnf9mct7d51tl45k13b9bi6b9j037.apps.googleusercontent.com',
    iosBundleId: 'newapp.example.newApp.RunnerTests',
  );
}
