import 'package:e_commerce_app/login_screens/number_page.dart';
import 'package:flutter/material.dart';

Padding buttons({
  required BuildContext context,
  IconData? iconData, // Ab IconData lete hain instead of Icon
  String? imagePath, // Optional Image asset path
  double? iconSize, // Icon/Image size
  required Color buttonBg,
  required String text,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NumberPage()),
          );
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: buttonBg,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath != null) ...[
              Image.asset(
                imagePath,
                height: iconSize ?? 24, // size use kiya
                width: iconSize ?? 24,
              ),
              SizedBox(width: 10),
            ] else if (iconData != null) ...[
              Icon(
                iconData,
                color: Colors.white,
                size: iconSize ?? 24, // default 24
              ),
              SizedBox(width: 10),
            ],
            Text(text, style: TextStyle(fontSize: 20, color: Colors.white)),
          ],
        ),
      ),
    ),
  );
}
