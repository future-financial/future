import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  static PackageInfo? _info;

  static Future<void> init() async {
    _info = await PackageInfo.fromPlatform();
  }

  static String get appName => _info?.appName ?? 'Unknown';
  static String get version => _info?.version ?? '0.0.0';
}
