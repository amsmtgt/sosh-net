import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SoshNetFirebaseUser {
  SoshNetFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

SoshNetFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SoshNetFirebaseUser> soshNetFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<SoshNetFirebaseUser>(
        (user) => currentUser = SoshNetFirebaseUser(user));
