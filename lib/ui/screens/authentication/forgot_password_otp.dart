import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/custom_button.dart';
import 'forgot_password_dialog.dart';

class ForgotPasswordOtp extends StatefulWidget {
  const ForgotPasswordOtp({super.key});

  @override
  State<ForgotPasswordOtp> createState() => _ForgotPasswordOtpState();
}

class _ForgotPasswordOtpState extends State<ForgotPasswordOtp> {
  final List<FocusNode> _focusNode = List.generate(4, (index) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());
  Color _btnColor = const Color(0xFF393939);
  double _btnElevation = 0;
  bool _flag = false;

  @override
  void dispose() {
    for (int index = 0; index < _focusNode.length; index++) {
      _focusNode[index].dispose();
      _controllers[index].dispose();
    }
    super.dispose();
  }

  void _openCongratulationsDialog() {
    if (_flag) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => const ForgotPasswordDialog(),
      );
    }
  }

  void _focusFunctionality(String value, int index) {
    if (value.length == 1) {
      if (index < 3) {
        FocusScope.of(context).requestFocus(_focusNode[index + 1]);
      } else {
        _focusNode[index].unfocus();
        setState(() {
          _flag = true;
          _btnElevation = 8;
          _btnColor = const Color(0xFF101010);
        });
      }
    } else if (value.isEmpty && index > 0) {
      setState(() {
        _flag = false;
        _btnElevation = 0;
        _btnColor = const Color(0xFF393939);
      });
      FocusScope.of(context).requestFocus(_focusNode[index - 1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Forgot Password",
            style: GoogleFonts.poppins(
              color: const Color(0xFF101010),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Center(
                      child: Text(
                        "Code has been sent to +91 761*****67",
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF101010),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        4,
                        (index) {
                          return SizedBox(
                            height: 55,
                            width: 78,
                            child: TextFormField(
                              controller: _controllers[index],
                              cursorColor: const Color(0xFF101010),
                              focusNode: _focusNode[index],
                              onChanged: (value) {
                                _focusFunctionality(value, index);
                              },
                              decoration: InputDecoration(
                                filled: true,
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(width: 2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(width: 0.1),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fillColor: const Color(0xFFFAFAFA),
                              ),
                              style: Theme.of(context).textTheme.headlineSmall,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressedCallback: _openCongratulationsDialog,
                  btnText: "Continue",
                  btnColor: _btnColor,
                  btnElevation: _btnElevation,
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ));
  }
}
