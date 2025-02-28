import 'package:flutter/material.dart';

class OutBoardingItem extends StatelessWidget {
  const OutBoardingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 50),
            SizedBox(height: 10),
            Text(
              'محمد النحال',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 5),
            Text(
              'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ عام 1500',
              textAlign: TextAlign.center,
            ),
          ],
        ),
    );
  }
}
