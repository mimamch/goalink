import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.placeHolder,
    this.prefixIcon,
    this.disabled = false,
    this.controller,
    this.suffixIcon,
    this.secure = false,
    this.disabledOutline = true,
    this.keyboardType,
  });

  final Widget? prefixIcon;
  final String? placeHolder;
  final bool disabled;
  final bool disabledOutline;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool secure;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: keyboardType == TextInputType.multiline ? null : 1,
        obscureText: secure,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black,
              )),
          prefixIcon: prefixIcon,
          hintText: placeHolder,
          hintStyle: const TextStyle(color: Colors.grey),
          enabled: !disabled,
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: disabledOutline ? Colors.grey : Colors.black,
              )),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
