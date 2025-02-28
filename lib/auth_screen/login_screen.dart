import 'package:flutter/material.dart';
import 'package:testflutter/button/elevated_button_widget.dart';
import 'package:testflutter/text_field/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome...',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
              cursorColor: Colors.lightBlueAccent,
              keyboardType: TextInputType.emailAddress,
              focusedColorOutline: Colors.lightBlueAccent,
              cursorWidth: 3,
              hint: 'Email',
              prefixIcon: Icons.email_outlined,
              label: Text('E-mail'),
              suffixIcon: Icons.check,
              suffixIconColor: Colors.green,
            ),
            SizedBox(height: 15,),
            TextFieldWidget(
              controller: _passwordController,
              cursorAnimationShowHidden: true,
              cursorColor: Colors.lightBlueAccent,
              keyboardType: TextInputType.emailAddress,
              focusedColorOutline: Colors.lightBlueAccent,
              cursorWidth: 3,
              hint: 'Email',
              prefixIcon: Icons.email_outlined,
              label: Text('Password'),
              suffixIcon: Icons.visibility,
            ),
            SizedBox(height: 25,),
            ElevatedButtonWidget(onTap: (){}, child: Text('Login'),)
          ],
        ),
      ),
    );
  }
}
