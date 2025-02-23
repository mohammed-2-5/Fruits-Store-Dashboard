import 'package:flutter/material.dart';

import '../styles/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.title});
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: TextButton(

          style: TextButton.styleFrom(backgroundColor: Color(0xff1B5E37),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // Rounded corners
            ),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: AppTextStyles.style16w700.copyWith(color: Colors.white),
          )),
    );
  }
}
