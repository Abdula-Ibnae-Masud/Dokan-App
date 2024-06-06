import 'package:flutter/material.dart';
import 'app_modules.dart';

class InputTextField extends StatelessWidget {
  final String? hint;
  final GlobalKey<FormState>? formKey;
  final bool? active;
  final int maxLines;
  final TextInputType? keyBoard;
  final IconData? icon;
  final String? labelText;
  final TextEditingController? textController;
  final String validationText;
  // final FormFieldValidator<String>? validator;
  const InputTextField({
    Key? key,
    this.hint,
    this.formKey,
    this.active = true,
    this.maxLines = 1,
    this.keyBoard,
    this.labelText,
    this.textController,
    this.validationText = '',
    // this.validator,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      keyboardType: keyBoard,
      maxLines: maxLines,
      controller: textController,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 12),
        enabled: active!,
        prefixIcon: Icon(
          icon,
          size: 24,
          color: appColor,
        ),
        labelText: labelText,
        labelStyle: const TextStyle(fontSize: 12, color: Colors.black),
        isDense: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.black, width: 3)),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return value = validationText;
        } else {
          return null;
        }
      },
      // validator: validator,
    );
  }
}

class InputTextFormField extends StatelessWidget {
  final String? hint;
  final GlobalKey<FormState>? formKey;
  final bool? active;
  final int maxLines;
  final TextInputType? keyBoard;
  final String? labelText;
  final TextEditingController? textController;
  final String validationText;
  const InputTextFormField({
    Key? key,
    this.hint,
    this.formKey,
    this.active = true,
    this.maxLines = 1,
    this.keyBoard,
    this.labelText,
    this.textController,
    this.validationText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black,fontSize: 11),
      keyboardType: keyBoard,
      maxLines: maxLines,
      controller: textController,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 11),
        labelText: labelText,
        labelStyle: const TextStyle(fontSize: 11, color: Colors.black),
        // isDense: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide:  const BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.black, width: 3)),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return value = validationText;
        } else {
          return null;
        }
      },
    );
  }
}