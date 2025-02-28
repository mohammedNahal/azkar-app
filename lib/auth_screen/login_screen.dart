import 'package:flutter/material.dart';
import 'package:testflutter/button/elevated_button_widget.dart';
import 'package:testflutter/text_field/text_field_widget.dart';
import 'package:testflutter/validator/SOLID/single_responsibility.dart';

import '../text_field/text_form_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final _formKey = GlobalKey<FormState>();

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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormFieldWidget(
                      controller: _emailController,
                      onValidator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email address is required';
                        } else {
                          return null;
                        }
                      },
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
                      prefixIcon: Icons.email_outlined,
                      label: Text('E-mail'),
                      suffixIcon: Icons.check,
                      suffixIconColor: Colors.green,
                    ),
                    SizedBox(height: 15),
                    TextFormFieldWidget(
                      controller: _passwordController,
                      onValidator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        } else {
                          return null;
                        }
                      },
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
                        if (_formKey.currentState!.validate()) {
                          print('valid');
                        } else {
                          print(('not valid'));
                        }
                      },
                      backgroundColor: Colors.green,
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
