import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pramagang/pallete.dart';
import 'package:pramagang/widgets/widgets.dart';
import 'package:pramagang/screens/login-screen.dart';
import 'package:pramagang/pages/homepages/views/home.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CreateNewAccount extends StatelessWidget {
   final globalkey = GlobalKey<FormState>();
  var _usernameController = TextEditingController();
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  var _repasswordController = TextEditingController();
  final auth = FirebaseAuth.instance;

  String _email,_password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      
      children: [
        BackgroundImage(image: 'assets/images/bg1.jpg'),
        Scaffold(
          key: globalkey,
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.1,
                ),
                Stack(
                  children: [
                    Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: CircleAvatar(
                            radius: size.width * 0.14,
                            backgroundColor: Colors.grey[400].withOpacity(
                              0.4,
                            ),
                            child: Icon(
                              FontAwesomeIcons.user,
                              color: kWhite,
                              size: size.width * 0.1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.08,
                      left: size.width * 0.56,
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: kBlue,
                          shape: BoxShape.circle,
                          border: Border.all(color: kWhite, width: 2),
                        ),
                        child: Icon(
                          FontAwesomeIcons.arrowUp,
                          color: kWhite,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Column(
                  children: [
                    TextInputField(
                       controller: _usernameController,
                      icon: FontAwesomeIcons.user,
                      hint: 'User',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    TextInputField(
                      controller: _emailController,
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                      // onChanged: (value) {
                      //     _email = value.trim();
                      // }
                      
                    ),
                    PasswordInput(
                     controller: _passwordController,
                      icon: FontAwesomeIcons.lock,
                      hint: 'Password',
                      inputAction: TextInputAction.next,
                      // onChanged: (value) {
                      //     _password = value.trim();
                      // }
                    ),
                    PasswordInput(
                      controller: _repasswordController,
                      icon: FontAwesomeIcons.lock,
                      hint: 'Confirm Password',
                      inputAction: TextInputAction.done,
                    ),
                    SizedBox(
                      height: 25,
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
                            'Register',
                            textAlign: TextAlign.center,
                            style:kBodyText.copyWith(fontWeight: FontWeight.bold),
                       
                            ),
                       
                          ),
                       
                        ),
                         onPressed: () async {
          try {
            User user = (await FirebaseAuth.instance
                .createUserWithEmailAndPassword(
                    email: _emailController.text,
                    password: _passwordController.text,)).user;
            if(user != null){
              user.updateProfile(displayName: _usernameController.text);
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
                           
    
                                
            }
          } catch (e) {
            print(e);
            _usernameController.text = "";
            _passwordController.text = "";
            _repasswordController.text = "";
            _emailController.text = "";
            // TODO: alertdialog with error
          }
        },  
                      
        
                               ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: kBodyText,
                        ),
                        GestureDetector(
                           onTap: () {
                         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()
        ),);
        },
                          child: Text(
                            'Login',
                            style: kBodyText.copyWith(
                                color: kBlue, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
