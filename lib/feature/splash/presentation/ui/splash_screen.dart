import 'package:flutter/material.dart';
import 'package:flutter_goroute_demo/base/base_consumer_state.dart';
import 'package:flutter_goroute_demo/feature/splash/presentation/controller/app_controller.dart';
import 'package:flutter_goroute_demo/feature/splash/presentation/state/app_state.dart';
import 'package:flutter_goroute_demo/route/name_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends BaseConsumerState<SplashScreen> {
  @override
  Widget build(BuildContext context) {    
    ref.listen<AppState>(appControllerProvider, (previous, next) {
      next.themeMode?.when(
        data: (data) {
          context.goNamed(loginNameRoute);
        },            
        error: (e,s) => Center(child: Text(e.toString())), 
        loading: () => null,
      );     
    }); 
    return const Center(
      child: CircularProgressIndicator(color: Colors.white,),
    );   
    }

}
