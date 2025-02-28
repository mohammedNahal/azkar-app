import 'package:flutter/material.dart';
import 'package:testflutter/button/elevated_button_widget.dart';
import 'package:testflutter/prefs/shared_pref_controller.dart';

import '../../text_field/text_form_field_widget.dart';


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
        title: Text('تسجيل الدخول', style: TextStyle(color: Colors.black)),
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
                'مرحبا بكم...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.deepOrange.shade500,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'لتسجيل الدخول قم بادخال الايميل وكلمة المرور الخاصة بك.',
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
                          return 'يجب ادخال البريد الالكتروني';
                        } else {
                          return null;
                        }
                      },
                      cursorAnimationShowHidden: true,
                      cursorColor: Colors.deepOrange.shade500,
                      prefixIconColor: Colors.deepOrange.shade500,
                      labelTextStyle: TextStyle(color: Colors.deepOrange.shade500),
                      enableColorOutline: Colors.deepOrange.shade500,
                      disableColorOutline: Colors.deepOrange.shade500,
                      keyboardType: TextInputType.emailAddress,
                      focusedColorOutline: Colors.deepOrange.shade500,
                      cursorWidth: 3,
                      hint: 'البريد الالكتروني',
                      prefixIcon: Icons.email_outlined,
                      label: Text('البريد الالكتروني'),
                      suffixIcon: Icons.check,
                      suffixIconColor: Colors.deepOrange.shade500,
                      hintDirection: TextDirection.rtl,
                    ),
                    SizedBox(height: 15),
                    TextFormFieldWidget(
                      controller: _passwordController,
                      hintDirection: TextDirection.rtl,
                      onValidator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'يجب ادخال كلمة المرور';
                        } else {
                          return null;
                        }
                      },
                      cursorAnimationShowHidden: true,
                      cursorColor: Colors.deepOrange.shade500,
                      keyboardType: TextInputType.visiblePassword,
                      focusedColorOutline: Colors.deepOrange.shade500,
                      cursorWidth: 3,
                      hint: 'كلمة المرور',
                      prefixIconColor: Colors.deepOrange.shade500,
                      labelTextStyle: TextStyle(color: Colors.deepOrange.shade500),
                      enableColorOutline: Colors.deepOrange.shade500,
                      disableColorOutline: Colors.deepOrange.shade500,
                      prefixIcon: Icons.lock_outline,
                      label: Text('كلمة المرور'),
                      suffixIcon: Icons.visibility,
                      isPass: true,
                    ),
                    SizedBox(height: 25),
                    ElevatedButtonWidget(
                      onTap: () async{
                        if (_formKey.currentState!.validate()){
                          await SharedPrefController().saveLoggedInInfo(emailAddress: _emailController.text);
                          Navigator.pushReplacementNamed(context, '/home_screen');
                        } else {
                          return;
                        }
                      },
                      backgroundColor:Colors.deepOrange.shade500,
                      child: Text('تسجيل الدخول'),
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
