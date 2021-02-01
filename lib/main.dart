// import 'package:flutter/material.dart';
// import 'splashscreen.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'screens/screens.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:pramagang/service/auth.dart';  
// import 'package:pramagang/tampilan/auth_screen_view.dart'; 
// import 'package:pramagang/tampilan/Drawer.dart'; 
// import 'package:provider/provider.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//    await Firebase.initializeApp();
//    runApp(MyApp());
//  }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'SplashScreen',
//       home: SplashScreenPage(),
//       theme: ThemeData(
//         textTheme:
//             GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/screens.dart';
import 'package:firebase_auth/firebase_auth.dart'; 
import 'package:pramagang/service/auth.dart';  
import 'package:pramagang/tampilan/auth_screen_view.dart'; 
import 'package:pramagang/tampilan/Drawer.dart'; 
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.git
  @override
  Widget build(BuildContext context) {
     return MultiProvider( 
      providers: [ 
        Provider<AuthenticationService>( 
          create: (_) => AuthenticationService(FirebaseAuth.instance), 
        ), 
        StreamProvider( 
            create: (context) => 
                context.read<AuthenticationService>().authStateChanges), 
      ], 
    child:
     MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SplashScreen',
      home: SplashScreenPage(),
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      ),
    );
  }
}
  class AuthenticationWrapper extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    final firebaseUser = context.watch<User>(); 
  
    if (firebaseUser != null) { 
      //If the user is successfully Logged-In. 
      return DrawerBar(); 
    } else { 
      //If the user is not Logged-In. 
      return AuthScreenView(); 
    } 
  } 
}

