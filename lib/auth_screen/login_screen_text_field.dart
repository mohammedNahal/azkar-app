import 'package:flutter/material.dart';
import 'package:testflutter/button/elevated_button_widget.dart';
import 'package:testflutter/text_field/text_field_widget.dart';
import 'package:testflutter/validator/SOLID/single_responsibility.dart';

import '../text_field/text_form_field_widget.dart';

class LoginScreenTextField extends StatefulWidget {
  const LoginScreenTextField({super.key});

  @override
  State<LoginScreenTextField> createState() => _LoginScreenTextFieldState();
}

class _LoginScreenTextFieldState extends State<LoginScreenTextField> implements SingleResponsibility{
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  String? _emailErrorText, _passwordErrorText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Enter your Email & Password to Login.',
                style: TextStyle(color: Colors.black45),
              ),
              SizedBox(height: 60),
              TextFieldWidget(
                controller: _emailController,
                cursorAnimationShowHidden: true,
                cursorColor: Colors.green,
                prefixIconColor: Colors.green,
                labelTextStyle: TextStyle(color: Colors.green),
                enableColorOutline: Colors.green,
                disableColorOutline: Colors.green,
                keyboardType: TextInputType.emailAddress,
                focusedColorOutline: Colors.green,
                cursorWidth: 3,
                hint: 'Email',
                errorText: _emailErrorText,
                prefixIcon: Icons.email_outlined,
                label: Text('E-mail'),
                suffixIcon: Icons.check,
                suffixIconColor: Colors.green,
              ),
              SizedBox(height: 15),
              TextFieldWidget(
                controller: _passwordController,
                errorText: _passwordErrorText,
                cursorAnimationShowHidden: true,
                cursorColor: Colors.green,
                keyboardType: TextInputType.visiblePassword,
                focusedColorOutline: Colors.green,
                cursorWidth: 3,
                hint: 'Password',
                prefixIconColor: Colors.green,
                labelTextStyle: TextStyle(color: Colors.green),
                enableColorOutline: Colors.green,
                disableColorOutline: Colors.green,
                prefixIcon: Icons.lock_outline,
                label: Text('Password'),
                suffixIcon: Icons.visibility,
                isPass: true,
              ),
              SizedBox(height: 25),
              ElevatedButtonWidget(
                onTap: () {
                  performLogin();
                },
                backgroundColor: Colors.green,
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool checkData() {
  if(_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty){
    return true;
  }
  checkData();
  return false;
  }

  @override
  void checkErrors() {
    setState(() {
      _emailErrorText = _emailController.text.isEmpty ? 'Email address is required' : null;
      _passwordErrorText = _passwordController.text.isEmpty ? 'Password is required' : null;
    });
  }

  @override
  void login() {
    print('Login Success');
  }

  @override
  void performLogin() {
    if(checkData()) {
      login();
    }
  }
}
