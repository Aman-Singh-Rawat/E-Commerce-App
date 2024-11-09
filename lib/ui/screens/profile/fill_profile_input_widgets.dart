import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/converters.dart';
import '../../../utils/fill_profile_property.dart';
import '../../../utils/profile_enum.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class FillProfileInputWidgets extends StatefulWidget {
  const FillProfileInputWidgets({super.key});

  @override
  State<FillProfileInputWidgets> createState() => _FillProfileInputWidgets();
}

class _FillProfileInputWidgets extends State<FillProfileInputWidgets> {
  bool _isBtnEnabled = false;
  String? _selectedGender;

  final _textStyle = GoogleFonts.poppins(
    color: const Color(0xFF101010),
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  void _showGenderDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "Select Gender",
            style: GoogleFonts.poppins(
              color: const Color(0xFF101010),
              fontWeight: FontWeight.w500,
            ),
          ),
          shadowColor: const Color(0xFF101010),
          actionsAlignment: MainAxisAlignment.start,
          actions: [
            RadioListTile(
              title: Text(
                "Male",
                style: _textStyle,
              ),
              activeColor: const Color(0xFF101010),
              value: "Male",
              groupValue: _selectedGender,
              onChanged: _changeGender,
            ),
            RadioListTile(
              title: Text(
                "Female",
                style: _textStyle,
              ),
              activeColor: const Color(0xFF101010),
              value: "Female",
              groupValue: _selectedGender,
              onChanged: _changeGender,
            ),
            RadioListTile(
              title: Text(
                "Others",
                style: _textStyle,
              ),
              activeColor: const Color(0xFF101010),
              value: "Others",
              groupValue: _selectedGender,
              onChanged: _changeGender,
            )
          ],
        );
      },
    );
  }

  void _changeGender(String? value) {
    setState(() {
      _selectedGender = value;
    });
    controllers[ProfileEnum.gender]?.text = value ?? "";
    Navigator.of(context).pop();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2004, 7, 12),
      firstDate: DateTime(1947),
      lastDate: DateTime(2024),
    );

    if (pickedDate != null) {
      setState(() {
        controllers[ProfileEnum.dateOfBirth]?.text =
            getFormattedDate(pickedDate) ?? "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hintText: "Full Name",
          controller: controllers[ProfileEnum.fullName]!,
          inputType: TextInputType.name,
        ),
        CustomTextField(
          hintText: "Nickname",
          controller: controllers[ProfileEnum.nickName]!,
          inputType: TextInputType.name,
        ),
        CustomTextField(
          hintText: "Date of Birth",
          controller: controllers[ProfileEnum.dateOfBirth]!,
          isEnabled: true,
          onClicked: () {
            _selectDate(context);
          },
          inputType: TextInputType.datetime,
          suffixIcon: Icons.calendar_month,
        ),
        CustomTextField(
          hintText: "Email",
          controller: controllers[ProfileEnum.email]!,
          inputType: TextInputType.emailAddress,
          suffixIcon: Icons.email_outlined,
        ),
        CustomTextField(
          hintText: "Phone Number",
          controller: controllers[ProfileEnum.phoneNumber]!,
          inputType: TextInputType.datetime,
        ),
        CustomTextField(
          hintText: "Gender",
          isEnabled: true,
          onClicked: _showGenderDialog,
          controller: controllers[ProfileEnum.gender]!,
          inputType: TextInputType.emailAddress,
          suffixIcon: Icons.arrow_drop_down_rounded,
        ),
        Container(
          padding: const EdgeInsets.only(top: 80),
          width: double.infinity,
          child: CustomButton(
            onPressedCallback: () {},
            btnText: "Continue",
            btnColor: _isBtnEnabled
                ? const Color(0xFF101010)
                : const Color(0xFF393939),
            btnElevation: _isBtnEnabled ? 8 : 0,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  void _checkIfAllFieldsFilled() {
    setState(() {
      _isBtnEnabled = true;
      controllers.forEach((key, value) {
        if (value.text.isEmpty) {
          _isBtnEnabled = false;
        }
      });
    });
  }

  /* lifecycle methods */
  @override
  void initState() {
    super.initState();
    controllers.forEach((key, controller) {
      controller.addListener(_checkIfAllFieldsFilled);
    });
  }

  @override
  void dispose() {
    super.dispose();
    controllers.forEach((key, controller) {
      controller.addListener(() {
        setState(() {});
      });
    });
  }
}
