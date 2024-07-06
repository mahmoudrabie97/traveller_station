import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color hinnntcolr;
  final IconData? perfixicon;
  final IconData? suffixicon;
  final Function()? suffixpressed;
  final Function()? perfixpressed;
  final FocusNode? focusnode;
  final Function(String?)? onsubmitted;

  const CustomTextFormField(
      {super.key,
      this.hintText,
      this.focusnode,
      this.validator,
      this.suffixpressed,
      this.controller,
      this.keyboardType,
      this.obscureText = false,
      this.hinnntcolr = Colors.black,
      this.perfixicon,
      this.onsubmitted,
      this.suffixicon,
      this.perfixpressed});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        backgroundColor: Color(0xffFFFFFF),
      ),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(color: hinnntcolr),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.white),
          ),
          errorStyle: const TextStyle(
              color: Colors.red, fontSize: 12, fontWeight: FontWeight.bold),
          focusColor: Colors.white,
          prefixIcon: perfixicon != null
              ? IconButton(onPressed: perfixpressed, icon: Icon(perfixicon))
              : null,
          suffixIcon: suffixicon != null
              ? IconButton(onPressed: suffixpressed, icon: Icon(suffixicon))
              : null),
      onFieldSubmitted: onsubmitted,
      validator: validator!,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      focusNode: focusnode,
    );
  }
}
