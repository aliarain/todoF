import 'package:flutter/material.dart';
import 'package:todoflutter/services/auth.dart';
import 'package:todoflutter/widgets/widgets.dart';


class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  
  AuthService _authService = new AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Widgets().mainAppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('TodoF', style: TextStyle(fontSize: 30),),
            SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                _authService.signInWithGoogle(context);
              },
                child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                color: Colors.redAccent,
                ),
                child: Text('Sign In With Google')
              ),
            )
          ],
          ),
      ),
    );
  }
}