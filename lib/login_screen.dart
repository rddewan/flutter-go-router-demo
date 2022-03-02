import 'package:flutter/material.dart';
import 'package:flutter_goroute_demo/widget/form/email_form_filed.dart';
import 'package:flutter_goroute_demo/widget/form/password_form_filed.dart';
import 'package:flutter_goroute_demo/widget/orange_gradient_button.dart';
import 'package:go_router/go_router.dart';

import 'route/name_route.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> with RestorationMixin<LoginScreen>, WidgetsBindingObserver{  
  final RestorableString _email = RestorableString('');
  final RestorableString _password = RestorableString('');
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late FocusNode _passwordFocusNode;
  final _formKey = GlobalKey<FormState>();
 
  @override
  void initState() {    
    super.initState();  
    WidgetsBinding.instance?.addObserver(this);  
    _emailController = TextEditingController();
    _passwordController = TextEditingController();   
    _passwordFocusNode = FocusNode(); 
    textEditingControllerListener();
  }

  @override
  void dispose() {    
    WidgetsBinding.instance?.removeObserver(this);
    _emailController.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (context,constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [                        
                      EmailTextFormFiled(
                        label: 'email', 
                        textController: _emailController),
                      const SizedBox(height: 16.0),
                      PasswordFormField(
                        lableText: 'password',
                        textController: _passwordController,
                        focusNode: _passwordFocusNode
                      ),
                      const SizedBox(height: 24.0),
                      OrangeGradientButton(                                
                            text: 'login',
                            onTapCallBack: () {
                                                      
                            },
                      ),
                      const SizedBox(height: 24.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have a account? | ", style: TextStyle(fontSize: 16.0,)),
                          InkWell(
                            onTap: () => context.goNamed(signupNameRoute),
                            child: const Text("Signup Now", style: TextStyle(color: Colors.blueAccent,fontSize: 18.0),)
                          )
                        ],
                      ),                                        
                    ],                
                  ),
                ),                  
              ),
            ],
          ); 
        },      
      ),
      ),
    );
  }

  void textEditingControllerListener() {
    _emailController.addListener(() { 
      _email.value = _emailController.text;      
    });

    _passwordController.addListener(() { 
      _password.value = _passwordController.text;   
      
    });
  }

  @override  
  String? get restorationId => 'login_screen'; 

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {   
    registerForRestoration(_email, 'login_email');
    registerForRestoration(_password, 'login_password');    
    _emailController.value = TextEditingValue( text: _email.value); 
    _passwordController.value = TextEditingValue(text: _password.value); 
  } 

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {    
    switch (state) {
      case AppLifecycleState.inactive:
        debugPrint(state.toString());         
        break;
      case AppLifecycleState.paused:          
        debugPrint(state.toString());
        break;
      case AppLifecycleState.detached:        
        debugPrint(state.toString());
        break;
      case AppLifecycleState.resumed:            
        debugPrint(state.toString());
        break;      
      
    }
  }

  
  
}

