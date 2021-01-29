import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pramagang/pallete.dart';
import 'package:pramagang/widgets/widgets.dart';
import 'package:pramagang/screens/create-new-account.dart';
import 'package:pramagang/tampilan/Drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:async/async.dart';
import 'package:pramagang/pages/homepages/views/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  
    final globalkey = GlobalKey<FormState>();
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  final auth = FirebaseAuth.instance;
  String _email,_password;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          image: 'assets/images/bg1.jpg',
        ),
        Scaffold(
          key: globalkey,
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Text(
                    'PRAMAGANG',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(
                    controller: _emailController,
                    icon: FontAwesomeIcons.envelope,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                    //  onChanged: (value) {
                    //       _email = value.trim();
                    //   }
                  ),
                  PasswordInput(
                   controller: _passwordController,
                    icon: FontAwesomeIcons.lock,
                    hint: 'Password',  
                    inputAction: TextInputAction.done,
                    //  onChanged: (value) {
                    //       _password = value.trim();
                    //   }
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                    child: Text(
                      'Forgot Password',
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
           ],
              ),
             RaisedButton(
         
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF13E3D2),
                              Color(0xFF5D74E2)
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(80.0),
                          ),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                            minWidth: 150.0,
                            minHeight: 36.0,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style:kBodyText.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                  
                          onPressed: () async {
          try {
            User user =
                (await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: _emailController.text,
              password: _passwordController.text,
            ))
                    .user;
            if (user != null) {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setString('displayName', user.displayName);
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
            }
          } catch (e) {
            print(e);
            _emailController.text = "";
            _passwordController.text = "";
            // TODO: AlertDialog with error
          }
        },
        
                               ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateNewAccount()),
                  );
                },
                child: Container(
                  child: Text(
                    'Create New Account',
                    style: kBodyText,
                  ),
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(width: 1, color: kWhite))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
