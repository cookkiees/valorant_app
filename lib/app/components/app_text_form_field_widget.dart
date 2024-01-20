import 'package:flutter/material.dart';

class AppTextFormFieldWidget extends StatelessWidget {
  const AppTextFormFieldWidget({
    super.key,
    this.obscureText = false,
    this.onTap,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.controller,
    this.hintText,
    this.errorText,
    this.suffixIcon,
    this.prefixIcon,
    this.contentPadding,
    this.readOnly = false,
    this.error,
  });
  final Widget? error;
  final bool readOnly;
  final bool obscureText;
  final String? hintText;
  final String? errorText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onTap: onTap,
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      controller: controller,
      readOnly: readOnly,
      cursorColor: Colors.black,
      cursorWidth: 1,
      style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        error: error,
        hintStyle: const TextStyle(fontSize: 12, color: Colors.grey),
        errorText: errorText,
        contentPadding: contentPadding ??
            const EdgeInsets.only(left: 12, bottom: 0.5, right: 12),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 0.5,
          ),
        ),
      ),
    );
  }
}
