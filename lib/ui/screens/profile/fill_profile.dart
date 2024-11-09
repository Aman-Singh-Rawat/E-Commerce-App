import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/utils/converters.dart';
import 'package:shoesy/utils/profile_enum.dart';

import '../../widgets/custom_textfield.dart';

class FillProfile extends StatefulWidget {
  const FillProfile({super.key});

  @override
  State<FillProfile> createState() => _FillProfileState();
}

class _FillProfileState extends State<FillProfile> {
  DateTime? _selectedDate;
  String? _selectedGender;

  final Map<ProfileEnum, TextEditingController> _controllers = {
    ProfileEnum.fullName: TextEditingController(), // 0 -> full name
    ProfileEnum.nickName: TextEditingController(), // 1 -> nickname
    ProfileEnum.dateOfBirth: TextEditingController(), // 2 -> D.O.B
    ProfileEnum.email: TextEditingController(), // 3 -> Email
    ProfileEnum.phoneNumber: TextEditingController(), // 4 -> PhoneNumber
    ProfileEnum.gender: TextEditingController(), // 5 -> Gender
  };

  void _changeGender(String? value) {
    setState(() {
      _selectedGender = value;
    });
    _controllers[ProfileEnum.gender]?.text = value ?? "";
    Navigator.of(context).pop();
  }

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

  @override
  void initState() {
    super.initState();
    _controllers.forEach((key, controller) {
      controller.addListener(() {
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controllers.forEach((key, controller) {
      controller.addListener(() {
        setState(() {});
      });
    });
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
        _controllers[ProfileEnum.dateOfBirth]?.text =
            getFormattedDate(pickedDate) ?? "";
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Fill Your Profile",
          style: GoogleFonts.poppins(
            color: const Color(0xFF101010),
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(7),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Color(0xFFF5F5F7),
                      child: Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Icon(
                          Icons.person_rounded,
                          size: 130,
                          color: Color(0xFFE9EAEF),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              CustomTextField(
                hintText: "Full Name",
                controller: _controllers[ProfileEnum.fullName]!,
                inputType: TextInputType.name,
              ),
              CustomTextField(
                hintText: "Nickname",
                controller: _controllers[ProfileEnum.nickName]!,
                inputType: TextInputType.name,
              ),
              CustomTextField(
                hintText: "Date of Birth",
                controller: _controllers[ProfileEnum.dateOfBirth]!,
                isEnabled: true,
                onClicked: () {
                  _selectDate(context);
                },
                inputType: TextInputType.datetime,
                suffixIcon: Icons.calendar_month,
              ),
              CustomTextField(
                hintText: "Email",
                controller: _controllers[ProfileEnum.email]!,
                inputType: TextInputType.emailAddress,
                suffixIcon: Icons.email_outlined,
              ),
              CustomTextField(
                hintText: "Phone Number",
                controller: _controllers[ProfileEnum.phoneNumber]!,
                inputType: TextInputType.datetime,
              ),
              CustomTextField(
                hintText: "Gender",
                isEnabled: true,
                onClicked: _showGenderDialog,
                controller: _controllers[ProfileEnum.gender]!,
                inputType: TextInputType.emailAddress,
                suffixIcon: Icons.arrow_drop_down_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
