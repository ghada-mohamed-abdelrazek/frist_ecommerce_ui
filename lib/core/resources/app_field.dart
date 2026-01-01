import 'package:flutter/material.dart';

class AppField extends StatelessWidget {
   AppField({
    super.key, this.obsureText = false, required this.hintText,required this.endIcon
  });

  final bool obsureText;
  final String hintText;
  Widget endIcon;
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      obscureText: obsureText,
      decoration: InputDecoration(
        filled: true,
        suffixIcon: endIcon ,
        fillColor: Color(0xffF3F3F3),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Color(0xffFF5E00) )
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.transparent)
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Colors.red.shade900)
        ),
        hintText: hintText,
      ),
    );
  }
}