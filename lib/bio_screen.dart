import 'package:flutter/material.dart';
import 'package:testflutter/widget/bio_card.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('BIO'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          gradient: LinearGradient(
            colors: [Colors.blue.shade900, Colors.blue.shade100],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              CircleAvatar(radius: 50),
              SizedBox(height: 10,),
              Text(
                'Mohammed Khalid',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Mohammed - Flutter Training',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black45,
                ),
              ),
              Divider(
                color: Colors.white,
                height: 50,
                endIndent: 20,
                indent: 20,
                thickness: 2,
              ),
              BioCard(
                title: 'Email',
                leadingIcon: Icons.email,
                subTitle: 'mohammedkhkhkh672@gmail.com',
                trailingIcon: Icons.send,
                marginBottom: 15,
              ),
              BioCard(
                title: 'Phone',
                leadingIcon: Icons.phone_android,
                subTitle: '+972 592564573',
                trailingIcon: Icons.call_rounded,
              ),
              Spacer(),
              Text('MOHAMMED ELNAHAL', style: TextStyle(letterSpacing: 5)),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
