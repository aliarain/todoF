

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:todoflutter/view/home.dart';

class AuthService{

   Future<FirebaseUser> signInWithGoogle(BuildContext context) async {
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final GoogleSignIn _googleSignIn = new GoogleSignIn();

    final GoogleSignInAccount _googleSignInAccount = await _googleSignIn.signIn();
    final GoogleSignInAuthentication _googleSignInAuthentication = await _googleSignInAccount.authentication;


    final AuthCredential credential = GoogleAuthProvider.getCredential(
    idToken: _googleSignInAuthentication.idToken,
    accessToken: _googleSignInAuthentication.accessToken
    );

    AuthResult result =  await  _firebaseAuth.signInWithCredential(credential);
    FirebaseUser userDetails = result.user;
    

    if (result == null) {
      
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(
        userEmail: userDetails.email,
        username: userDetails.displayName,
      )));
    }
    return userDetails;
  }
}