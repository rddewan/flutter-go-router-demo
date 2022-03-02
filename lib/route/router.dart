
import 'package:flutter/widgets.dart';
import 'package:flutter_goroute_demo/login_screen.dart';
import 'package:flutter_goroute_demo/route/name_route.dart';
import 'package:flutter_goroute_demo/signup_screen.dart';
import 'package:flutter_goroute_demo/widget/error/error_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {  
 
  static GoRouter router(){   
    return GoRouter(
      //initialLocation: '/',
      urlPathStrategy: UrlPathStrategy.path,      
      routes: [        
        GoRoute(
          name: defaultNameRoute,
          path: defaultRoute,
          builder: (context,state) => const LoginScreen(),          
          routes: [
            GoRoute(
              name: signupNameRoute,
              path: signupRoute,
              pageBuilder: (context,state) => CustomTransitionPage<void>(
                child: const SignupScreen(), 
                transitionsBuilder: (_,animation,__,child) =>
                  SlideTransition(
                  position: animation.drive(
                    Tween<Offset>(
                      begin: const Offset(0.25, 0.25),
                      end: Offset.zero,
                    ).chain(CurveTween(curve: Curves.easeIn)),
                  ),
                  child: child),
                ),
            ),            
          ],
        ),        
      ],
      restorationScopeId: 'router',
      errorBuilder: (context,state) => ErrorScreen(exception: state.error),
    );

  }
      
    

  }
