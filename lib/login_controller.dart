import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  final _googleSignin = GoogleSignIn();
  var googleAccount = Rx<GoogleSignInAccount?>(null);

// ignore: non_constant_identifier_names
  Login() async {
    googleAccount.value = await _googleSignin.signIn();
  }

// ignore: non_constant_identifier_names
  Logout() async {
    googleAccount.value = await _googleSignin.signOut();
  }
}
