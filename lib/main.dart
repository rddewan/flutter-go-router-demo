import 'package:flutter/material.dart';
import 'package:flutter_goroute_demo/login_screen.dart';
import 'package:flutter_goroute_demo/route/router.dart';

void main() {
  runApp(
    const RootRestorationScope(
      restorationId: 'root', 
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      restorationScopeId: 'main',
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppRouter.router().routeInformationParser, 
      routerDelegate: AppRouter.router().routerDelegate, 
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      //home: const LoginScreen(),
    );
  }
}
