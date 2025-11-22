import 'package:future/shared/lib/google/instance.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService {
  Future<String?> signInAndGetIdToken() async {
    try {
      final GoogleSignInAccount googleUser = await googleSignIn.authenticate();

      final googleAuth = googleUser.authentication;
      final googleIdToken = googleAuth.idToken;

      return googleIdToken;
    } catch (e) {
      rethrow;
    }
  }
}
