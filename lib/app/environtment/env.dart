import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'SUPABASE_URL', obfuscate: true)
  static final String supabaseUrl = _Env.supabaseUrl;

  @EnviedField(varName: 'SUPABASE_ANON_KEY', obfuscate: true)
  static final String supabaseAnonKey = _Env.supabaseAnonKey;

  @EnviedField(varName: 'GOOGLE_CLIENT_ID', obfuscate: true)
  static final String googleClientId = _Env.googleClientId;

  @EnviedField(varName: 'GOOGLE_SERVER_CLIENT_ID', obfuscate: true)
  static final String googleServerClientId = _Env.googleServerClientId;

  @EnviedField(varName: 'DEFAULT_LOCALE', obfuscate: true)
  static final String defaultLocale = _Env.defaultLocale;

  @EnviedField(varName: 'DEFAULT_CURRENCY', obfuscate: true)
  static final String defaultCurrency = _Env.defaultCurrency;

  @EnviedField(varName: 'DEFAULT_SYMBOL', obfuscate: true)
  static final String defaultSymbol = _Env.defaultSymbol;
}
