import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthInputFields extends StatefulWidget {

  AuthInputFields({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  TextEditingController emailController;
  TextEditingController passwordController;

  @override
  State<AuthInputFields> createState() => _AuthInputFieldsState();
}

class _AuthInputFieldsState extends State<AuthInputFields> {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  bool _passwordVisible = true;

  final TextStyle _textStyle = GoogleFonts.poppins(
    fontSize: 14,
    color: const Color(0xFF101010),
    fontWeight: FontWeight.w600,
  );

  final _decoration = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 20),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xFF101010),
        width: 1.5,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    fillColor: const Color(0xFFFAFAFA),
  );

  @override
  void initState() {
    super.initState();

    _emailFocusNode.addListener(() {
      setState(() {});
    });

    _passwordFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
  }

  void _changePasswordState() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: widget.emailController,
          decoration: _decoration.copyWith(
            hintText: "Email",
            prefixIcon: const Icon(
              Icons.email_rounded,
              color: Colors.grey,
            ),
            filled: !_emailFocusNode.hasFocus,
          ),
          cursorColor: const Color(0xFF101010),
          keyboardType: TextInputType.emailAddress,
          focusNode: _emailFocusNode,
          style: _textStyle,
        ),
        const SizedBox(height: 15),
        TextFormField(
          controller: widget.passwordController,
          obscureText: _passwordVisible,
          decoration: _decoration.copyWith(
            hintText: "Password",
            filled: !_passwordFocusNode.hasFocus,
            suffixIcon: IconButton(
              onPressed: _changePasswordState,
              icon: Icon(
                _passwordVisible ? Icons.visibility : Icons.visibility_off,
              ),
            ),
            prefixIcon: const Icon(
              Icons.lock,
              color: Colors.grey,
            ),
          ),
          cursorColor: const Color(0xFF101010),
          keyboardType: TextInputType.visiblePassword,
          focusNode: _passwordFocusNode,
          style: _textStyle,
        ),
      ],
    );
  }
}
