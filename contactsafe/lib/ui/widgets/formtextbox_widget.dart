import 'package:flutter/material.dart';

class FormTextBox extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final IconData? icon;
  final bool? hideCondition;

  const FormTextBox({
    super.key,
    required this.hintText,
    required this.controller,
    required this.icon,
    required this.hideCondition,
  });

  @override
  State<FormTextBox> createState() => _FormTextBoxState();
}

class _FormTextBoxState extends State<FormTextBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              controller: widget.controller,
              obscureText: (!widget.hideCondition!),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          const Spacer(),
          Icon(
            widget.icon,
            size: 25,
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
