import 'package:flutter/material.dart';
import 'package:tongue_tie_app/core/utils/util.dart';
import 'package:tongue_tie_app/core/utils/asset_provider.dart';
import 'package:tongue_tie_app/screens/auth/register.dart';
import 'package:tongue_tie_app/screens/home/home.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  void _trySignIn() {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus(); // Closes the keyboard

    if (isValid) {
      _formKey.currentState!.save();
      // After saving, navigate to the HomeScreen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(Assets.images.signin),
                SizedBox(height: kHorizontalMargin),
                Text('Sign In',
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text('Welcome Back!', style: TextStyle(fontSize: 24)),
                Text('Log in to continue your language journey.',
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
                SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your username' : null,
                  onSaved: (value) => _username = value!,
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) return 'Please enter your password';
                    if (value.length < 6)
                      return 'Password must be at least 6 characters long';
                    return null;
                  },
                  onSaved: (value) => _password = value!,
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {}, // Forgot Password Screen
                    child: Text('Forget Password?'),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity, // Ensures the button takes full width
                  child: ElevatedButton(
                    onPressed: _trySignIn,
                    child: Text('Sign In'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      textStyle: TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    child: Text(
                      'Don’t have an account? Sign Up',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
