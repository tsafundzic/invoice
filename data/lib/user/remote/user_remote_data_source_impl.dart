import 'package:data/user/remote/model/user_dto.dart';
import 'package:data/user/remote/user_remote_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'model/user_auth_dto.dart';

const String _users = "users";

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  UserRemoteDataSourceImpl(
    this._googleSignIn,
    this._firebaseAuth,
    this._firebaseFirestore,
  );

  @override
  Future<UserAuthDto> googleSignIn() async {
    GoogleSignInAccount? googleUser;
    if (await isSignedIn) {
      googleUser = await _googleSignIn.signInSilently();
    } else {
      googleUser = await _googleSignIn.signIn();
    }
    var googleAuth = await googleUser?.authentication;
    var credential = GoogleAuthProvider.credential(accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
    var authResult = await _firebaseAuth.signInWithCredential(credential);

    return UserAuthDto(
      id: authResult.user?.uid,
      admin: false,
    );
  }

  @override
  Future<bool> get isSignedIn => _googleSignIn.isSignedIn();

  @override
  Stream<UserAuthDto?> get userAuth => _firebaseAuth.userChanges().asyncMap((auth) async {
        if (auth == null) {
          return null;
        } else {
          var tokenResult = await auth.getIdTokenResult(false);
          var claims = tokenResult.claims;
          bool? admin = false;
          if (claims != null && claims.containsKey("admin")) {
            admin = claims["admin"];
          }
          return UserAuthDto(id: auth.uid, admin: admin);
        }
      }).map((firebaseUser) {
        if (firebaseUser == null) {
          return null;
        } else {
          return UserAuthDto(id: firebaseUser.id, admin: firebaseUser.admin);
        }
      }).asBroadcastStream();

  @override
  Stream<UserDto?> getUser(String userId) {
    return _firebaseFirestore.collection(_users).doc(userId).snapshots().map((DocumentSnapshot snapshot) {
      if (!snapshot.exists) {
        return null;
      } else {
        return UserDto.fromJson(snapshot.data() as Map<String, dynamic>);
      }
    });
  }
}
