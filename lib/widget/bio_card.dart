import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  const BioCard({
    required this.leadingIcon,
    required this.title,
    required this.subTitle,
    required this.trailingIcon,
    this.marginBottom = 0,
    super.key,
  });

  final IconData leadingIcon, trailingIcon;
  final String title, subTitle;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: marginBottom),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(leadingIcon),
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: Icon(trailingIcon),
      ),
    );
  }
}
