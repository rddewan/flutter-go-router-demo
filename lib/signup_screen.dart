
import 'package:flutter/material.dart';
import 'package:flutter_goroute_demo/widget/form/email_form_filed.dart';
import 'package:flutter_goroute_demo/widget/form/name_form_field.dart';
import 'package:flutter_goroute_demo/widget/form/password_form_filed.dart';
import 'package:flutter_goroute_demo/widget/orange_gradient_button.dart';
import 'package:go_router/go_router.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> with RestorationMixin<SignupScreen>{ 

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _conformPasswordController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final RestorableString _name = RestorableString('');
  final RestorableString _email = RestorableString('');
  final RestorableTextEditingController _password = RestorableTextEditingController();

  @override
  void initState() {    
    super.initState();
    textEditingControllerListener();    
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _conformPasswordController.dispose(); 
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
        centerTitle: true,
      ),
      body: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [                         
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        NameTextFormFiled(
                          lable: 'Name',
                          restorationId: 'name',
                          textController: _nameController,
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        EmailTextFormFiled(
                          label: 'Email',
                          textController: _emailController,
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        PasswordFormField(
                          lableText: 'Password',
                          textController: _passwordController,
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        PasswordFormField(
                          lableText: 'Confrom Password',
                          textController: _conformPasswordController,
                        ),
                        const SizedBox(
                          height: 32.0,
                        ),
                        OrangeGradientButton(
                            text: 'Register Now',
                            onTapCallBack: () {
                              
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),        
    );  
  }
  
  @override
  String? get restorationId => 'signup_screen';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {   
    registerForRestoration(_name, 'signup_name');
    registerForRestoration(_email, 'signup_email');
    registerForRestoration(_password, 'signup_password');
    _nameController.value = TextEditingValue(text: _name.value);
    _emailController.value = TextEditingValue(text: _email.value);
    _passwordController.value = TextEditingValue(text: _password.value.text);
  }

  void textEditingControllerListener() {
    _nameController.addListener(() {
      _name.value =  _nameController.text;
    });
    
    _emailController.addListener(() {
      _email.value = _emailController.text;
    });

    _passwordController.addListener(() {
      _password.value.value = _passwordController.value;
      debugPrint(_password.value.text);
    });
  }
}