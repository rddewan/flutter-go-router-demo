import 'package:flutter/material.dart';
import 'package:flutter_goroute_demo/feature/setting/presentation/controller/setting_controller.dart';
import 'package:flutter_goroute_demo/hide_ui_widget.dart';
import 'package:flutter_goroute_demo/login_screen.dart';
import 'package:flutter_goroute_demo/route/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child:  RootRestorationScope(
      restorationId: 'root', 
      child: MyApp(),
    ),
  ),);
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> { 
  String? themeMode;

  @override
  Widget build(BuildContext context) {
    themeMode = ref.watch(settingControllerProvider).themeMode;
    return MaterialApp.router(
      restorationScopeId: 'main',
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppRouter.router().routeInformationParser, 
      routerDelegate: AppRouter.router().routerDelegate, 
      title: 'Flutter Demo',
      theme: setThemeData(themeMode),
      //builder: (_,child) => HideUIWidget(child: child),
      //home: const LoginScreen(),
    );
  }

  ThemeData setThemeData(String? code){
    if (code == ThemeMode.light.name) {
      return ThemeData(        
        primarySwatch: Colors.blue,
      );
    }

    return ThemeData(        
        primarySwatch: Colors.blueGrey,
      );

  }
}
