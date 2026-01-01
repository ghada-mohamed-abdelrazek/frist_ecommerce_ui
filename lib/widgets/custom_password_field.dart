import 'package:flutter/material.dart';
import 'package:fullter_project/core/resources/app_field.dart';

class CustomPasswordField extends StatefulWidget {
   CustomPasswordField({super.key, required this.hint});
  final String hint;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return AppField(
      obsureText: isHidden,
        hintText: widget.hint,
        endIcon: GestureDetector(
          onTap: (){
            setState(() {
              isHidden =! isHidden;
            });
          },
          child: isHidden?
              Icon(Icons.visibility_off_rounded,color: Color(0xffFF5E00),)
              :Icon(Icons.remove_red_eye_rounded,color:Color(0xffFF5E00) ,)

          ,
        ),
    );
  }
}
