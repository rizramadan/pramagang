import 'package:firebase_auth/firebase_auth.dart'; 
import 'package:flutter/material.dart'; 
import 'package:pramagang/service/auth.dart'; 
import 'package:pramagang/pallete.dart';
import 'package:provider/provider.dart'; 
import 'package:pramagang/tampilan/Drawer.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
  
class LoginPage extends StatefulWidget { 
  @override 
  _LoginPageState createState() => _LoginPageState(); 
} 
  
class _LoginPageState extends State<LoginPage> { 
  bool _obscureText = true; 
  String _email, _password; 
  bool _isSubmitting; 
  
  final _formKey = GlobalKey<FormState>(); 
  final _scaffoldKey = GlobalKey<ScaffoldState>(); 
  bool _dark;

  @override
  void initState() {
    super.initState();
    _dark = false;
  }

  Brightness _getBrightness() {
    return _dark ? Brightness.dark : Brightness.light;
  }
  
  FirebaseAuth auth = FirebaseAuth.instance; 
  final DateTime timestamp = DateTime.now(); 
  
  @override 
  Widget build(BuildContext context) { 
    return Theme(
      isMaterialAppTheme: true,
      data: ThemeData(
        brightness: _getBrightness(),
      ),
      child: Scaffold(
        backgroundColor: _dark ? null : Colors.grey.shade200,
       
    // return Scaffold( 
  key: _scaffoldKey, 
    //    backgroundColor: _dark ? null : Colors.grey.shade200,
      appBar: AppBar( 
        centerTitle: true, 
        title: Text(
          'Form Login',
         style: TextStyle(color: _dark ? Colors.white : Colors.black),
        ), 
         actions: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.moon),
              onPressed: () {
                setState(() {
                  _dark = !_dark;
                });
              },
            )
          ],

      ), 
      body: Container( 
        // color: Color(0xffba68c8),
        // color: Colors.cyanAccent,
        padding: EdgeInsets.symmetric(horizontal: 20), 
        child: Center( 
          child: SingleChildScrollView( 
            child: Form( 
              key: _formKey, 
              child: Column( 
                children: [ 
                  _showTitle(), 
                  _showEmailInput(), 
                  _showPasswordInput(), 
                  _showFormActions() 
                ], 
              ), 
            ), 
          ), 
        ), 
      ),
      ), 
    );
  } 

  
  _showTitle() { 
    return Text( 
      "Login", 
      style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold), 
      
      
    ); 
  } 
  
  _showEmailInput() { 
    return Padding( 
      padding: EdgeInsets.only(top: 20), 
      child: TextFormField( 
        onSaved: (val) => _email = val, 
        validator: (val) => !val.contains("@") ? "Invalid Email" : null, 
        decoration: InputDecoration( 
            border: OutlineInputBorder(), 
            labelText: "Email", 
            hintText: "Enter Valid Email", 
            icon: Icon( 
              Icons.mail, 
              color: Colors.black, 
            )), 
      ), 
    ); 
  } 
  
  _showPasswordInput() { 
    return Padding( 
      padding: EdgeInsets.only(top: 20), 
      child: TextFormField( 
        onSaved: (val) => _password = val, 
        validator: (val) => val.length < 6 ? "Password Is Too Short" : null, 
        obscureText: _obscureText, 
        decoration: InputDecoration( 
            suffixIcon: GestureDetector( 
              onTap: () { 
                setState(() { 
                  _obscureText = !_obscureText; 
                }); 
              }, 
              child: 
                  Icon(_obscureText ? Icons.visibility_off : Icons.visibility), 
            ), 
            border: OutlineInputBorder(), 
            labelText: "Password", 
            hintText: "Enter Valid Password", 
            icon: Icon( 
              Icons.lock, 
              color: Colors.black, 
            )), 
      ), 
    ); 
  } 
  
  _showFormActions() { 
    return Padding( 
      padding: EdgeInsets.only(top: 20), 
      child: Column( 
        children: [ 
          _isSubmitting == true
              ? CircularProgressIndicator( 
                  valueColor: 
                      AlwaysStoppedAnimation(Theme.of(context).primaryColor), 
                ) 
              : RaisedButton( 
                  child: Text( 
                    "Login", 
                    style: TextStyle(color: Colors.black, fontSize: 18), 
                  ), 
                  elevation: 8.0, 
                  shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.all(Radius.circular(10))), 
                  color: Colors.orange, 
                  onPressed: _submit
                  
                  ), 
        ], 
      ), 
    ); 
  } 
  
  _submit() { 
    final _form = _formKey.currentState; 
    if (_form.validate()) { 
      _form.save(); 
      //print("Email $_email, Password $_password"); 
      _LoginUser(); 
    } else { 
      print("Form is Invalid"); 
    } 
  } 
  
  _LoginUser() async { 
    setState(() { 
      _isSubmitting = true; 
    }); 
  
    final logMessage = await context 
        .read<AuthenticationService>() 
        .signIn(email: _email, password: _password); 
  
    logMessage == "Signed In"
        ? _showSuccessSnack(logMessage) 
        : _showErrorSnack(logMessage); 
  
    //print("I am logMessage $logMessage"); 
  
    if (logMessage == "Signed In") { 
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DrawerBar()));
    return;
    } else { 
                           Fluttertoast.showToast(
                                msg: "Username atau password salah!",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
      
    } 
    setState(() { 
        _isSubmitting = false; 
      }); 
  } 
  
  _showSuccessSnack(String message) async { 
    final snackbar = SnackBar( 
      backgroundColor: Colors.black, 
      content: Text( 
        "$message", 
        style: TextStyle(color: Colors.green), 
      ), 
    ); 
    _scaffoldKey.currentState.showSnackBar(snackbar); 
    _formKey.currentState.reset(); 
  } 
  
  _showErrorSnack(String message) { 
    final snackbar = SnackBar( 
      backgroundColor: Colors.black, 
      content: Text( 
        "$message", 
        style: TextStyle(color: Colors.red), 
      ), 
    ); 
    _scaffoldKey.currentState.showSnackBar(snackbar); 
    setState(() { 
      _isSubmitting = false; 
    }); 
  } 
}