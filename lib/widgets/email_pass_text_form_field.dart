import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailPassTextFormField extends StatefulWidget {
  const EmailPassTextFormField({super.key, required this.isEmail});

  final bool isEmail;

  @override
  State<EmailPassTextFormField> createState() => _EmailPassTextFormField();
}

class _EmailPassTextFormField extends State<EmailPassTextFormField> {
  final FocusNode _focusNode = FocusNode();
  String _hintText = "Email";
  bool _passwordVisible = true;
  IconData _prefixIcon = Icons.email_rounded;
  IconData? _suffixIcon = Icons.remove_red_eye_rounded;

  @override
  void initState() {
    super.initState();
    passOrEmail();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  void passOrEmail() {
    if (!widget.isEmail) {
      _hintText = "Password";
      _prefixIcon = Icons.lock;
    }
  }

  @override
  Widget build(BuildContext context) {
    _suffixIcon = _passwordVisible ? Icons.visibility : Icons.visibility_off;

    return TextFormField(
      focusNode: _focusNode,
      obscureText: widget.isEmail ? false : _passwordVisible,
      style: GoogleFonts.poppins(
        fontSize: 14,
        color: const Color(0xFF101010),
        fontWeight: FontWeight.w500,
      ),
      keyboardType: widget.isEmail
          ? TextInputType.emailAddress
          : TextInputType.visiblePassword,
      cursorColor: const Color(0xFF101010),
      decoration: InputDecoration(
        hintText: _hintText,
        prefixIcon: Icon(
          _prefixIcon,
          color: Colors.grey,
        ),
        suffixIcon: widget.isEmail
            ? null
            : IconButton(
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
                icon: Icon(_suffixIcon),
              ),
        filled: !_focusNode.hasFocus,
        fillColor: const Color(0xFFFAFAFA),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFF101010),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:BorderSide.none,
        ),
      ),
    );
  }
}
