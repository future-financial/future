import 'package:future/app/environtment/env.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn googleSignIn = GoogleSignIn.instance;

Future<void> initializeGoogleSignIn() async {
  googleSignIn.initialize(
    clientId: Env.googleClientId,
    serverClientId: Env.googleServerClientId,
  );
}
