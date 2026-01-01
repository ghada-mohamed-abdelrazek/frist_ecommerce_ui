import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isOn = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: isOn,
        activeTrackColor: Color(0xffFF5E00),
        onChanged: (val){
            setState(() {
              isOn =! isOn;
            });

        });
  }
}
