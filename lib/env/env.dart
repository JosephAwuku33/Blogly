import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'android_apiKey', obfuscate: true)
  static final String androidAPIkey = _Env.androidAPIkey;
  @EnviedField(varName: 'android_appId', obfuscate: true)
  static final String androidAppId = _Env.androidAppId;
  @EnviedField(varName: 'android_messagingSenderId', obfuscate: true)
  static final String androidMessagingSenderId = _Env.androidMessagingSenderId;
  @EnviedField(varName: 'android_projectId', obfuscate: true)
  static final String androidProjectId = _Env.androidProjectId;
  @EnviedField(varName: 'android_storageBucket', obfuscate: true)
  static final String androidStorageBucket = _Env.androidStorageBucket;

  @EnviedField(varName: 'ios_apiKey', obfuscate: true)
  static final String iosAPIkey = _Env.iosAPIkey;
  @EnviedField(varName: 'ios_appId', obfuscate: true)
  static final String iosAppId = _Env.iosAppId;
  @EnviedField(varName: 'ios_messagingSenderId', obfuscate: true)
  static final String iosMessagingSenderId = _Env.iosMessagingSenderId;
  @EnviedField(varName: 'ios_projectId', obfuscate: true)
  static final String iosProjectId = _Env.iosProjectId;
  @EnviedField(varName: 'ios_storageBucket', obfuscate: true)
  static final String iosStorageBucket = _Env.iosStorageBucket;
  @EnviedField(varName: 'iosClientId', obfuscate: true)
  static final String iosClientId = _Env.iosClientId;
  @EnviedField(varName: 'iosBundleId', obfuscate: true)
  static final String iosBundledId = _Env.iosBundledId;
}
