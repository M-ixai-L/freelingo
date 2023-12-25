import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freelingo/core/models/fl_user.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  AuthRepository({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
  })  : _firebaseAuth = firebaseAuth,
        _firestore = firestore;

  Future<FlUser?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    // Once signed in, return the UserCredential
    final UserCredential firebaseUser =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    final User? createdUser = firebaseUser.user;

    if (createdUser != null) {
      FlUser user = FlUser(
        id: createdUser.uid,
        email: createdUser.email ?? '',
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
        image: createdUser.photoURL,
        dictionaries: [],
      );

      final doc = await _firestore
          .collection("users")
          .doc(user.id)
          .get()
          .then((value) => value.exists);

      if (!doc) {
        await _firestore.collection("users").doc(user.id).set(user.toJson());
        return user;
      } else {
        await _firestore.collection("users").doc(user.id).update({
          'lastLoginAt': DateTime.now(),
        });

        final userDoc = await _firestore.collection('users').doc(user.id).get();
        return FlUser.fromJson(userDoc.data()!);
      }
    }
    return null;
  }

  Future<FlUser?> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final UserCredential firebaseUser =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final User? createdUser = firebaseUser.user;

    if (createdUser != null) {
      FlUser user = FlUser(
        id: createdUser.uid,
        email: email,
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
        image: createdUser.photoURL,
        dictionaries: [],
      );

      await _firestore.collection("users").doc(user.id).set(user.toJson());

      return user;
    }
    return null;
  }

  Future<void> signOut() async {
    await GoogleSignIn().signOut();
    await _firebaseAuth.signOut();
  }

  Future<void> updateUser(FlUser user) async {
    await _firestore.collection("users").doc(user.id).set(user.toJson());
  }

  Future<Stream<FlUser?>?> getCurrentUserStream() async {
    final User? createdUser = _firebaseAuth.currentUser;

    if (createdUser != null) {
      return _firestore
          .collection("users")
          .doc(createdUser.uid)
          .snapshots()
          .map((snapshot) => snapshot.data() == null
              ? null
              : FlUser.fromJson(snapshot.data()!));
    }
    return null;
  }

  Future<FlUser?> getCurrentUser() async {
    final User? createdUser = _firebaseAuth.currentUser;

    if (createdUser != null) {
      FlUser user = FlUser(
        id: createdUser.uid,
        email: createdUser.email ?? '',
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
        image: createdUser.photoURL,
        dictionaries: [],
      );

      final doc = await _firestore
          .collection("users")
          .doc(user.id)
          .get()
          .then((value) => value.exists);

      if (!doc) {
        await _firestore.collection("users").doc(user.id).set(user.toJson());
        return user;
      } else {
        await _firestore.collection("users").doc(user.id).update({
          'lastLoginAt': DateTime.now(),
        });
        final userDoc = await _firestore.collection('users').doc(user.id).get();
        return FlUser.fromJson(userDoc.data()!);
      }
    }
    return null;
  }

  Future<FlUser?> signInWithGoogle() async {
    await GoogleSignIn().signOut();
    await _firebaseAuth.signOut();
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    final UserCredential firebaseUser =
        await _firebaseAuth.signInWithCredential(credential);

    final User? createdUser = firebaseUser.user;

    if (createdUser != null) {
      FlUser user = FlUser(
        id: createdUser.uid,
        email: createdUser.email ?? '',
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
        image: createdUser.photoURL,
        dictionaries: [],
      );

      final doc = await _firestore
          .collection("users")
          .doc(user.id)
          .get()
          .then((value) => value.exists);

      if (!doc) {
        await _firestore.collection("users").doc(user.id).set(user.toJson());
        return user;
      } else {
        await _firestore.collection("users").doc(user.id).update({
          'lastLoginAt': DateTime.now(),
        });
        final userDoc = await _firestore.collection('users').doc(user.id).get();
        return FlUser.fromJson(userDoc.data()!);
      }
    }
    return null;
  }
}
