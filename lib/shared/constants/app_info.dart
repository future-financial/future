import 'package:future/shared/extensions/string_extensions.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  static PackageInfo? _info;

  static Future<void> init() async {
    _info = await PackageInfo.fromPlatform();
  }

  static String get appName {
    final raw = _info?.appName ?? 'Unknown';
    return raw.capitalizeFirst;
  }

  static String get version => _info?.version ?? '0.0.0';
}
