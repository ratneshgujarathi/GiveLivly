import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthService(this._auth);

  Stream<User> get authStateChanges => _auth.idTokenChanges();
}
