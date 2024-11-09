import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_textfield.dart';

class FillProfile extends StatefulWidget {
  const FillProfile({super.key});

  @override
  State<FillProfile> createState() => _FillProfileState();
}

class _FillProfileState extends State<FillProfile> {
  /*late final TextEditingController _fullNameController;
  late final TextEditingController _nicknameController;
  late final TextEditingController _dateOfBirthController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneNumberController;
  late final TextEditingController _genderController;*/

  final List<TextEditingController> _controllers = [
    TextEditingController(),  // 0 -> full name
    TextEditingController(),  // 1 -> nickname
    TextEditingController(), // 2 -> D.O.B
    TextEditingController(),  // 3 -> Email
    TextEditingController(), // 4 -> PhoneNumber
    TextEditingController(), // 5 -> Gender
  ];

  @override
  void initState() {
    super.initState();
    for (var controller in _controllers) {
      controller.addListener(() {
        setState(() {});
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    for (var controller in _controllers) {
      controller.dispose();
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2004, 7, 12),
      firstDate: DateTime(1947),
      lastDate: DateTime(2024),
    );


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
                controller: _controllers[0],
                inputType: TextInputType.name,
              ),
              CustomTextField(
                hintText: "Nickname",
                controller: _controllers[1],
                inputType: TextInputType.name,
              ),
              CustomTextField(
                hintText: "Date of Birth",
                controller: _controllers[2],
                isEnabled: true,
                onClicked: () {
                  _selectDate(context);
                },
                inputType: TextInputType.datetime,
                suffixIcon: Icons.calendar_month,
              ),
              CustomTextField(
                hintText: "Email",
                controller: _controllers[3],
                inputType: TextInputType.emailAddress,
                suffixIcon: Icons.email_outlined,
              ),
              CustomTextField(
                hintText: "Phone Number",
                controller: _controllers[4],
                inputType: TextInputType.datetime,
              ),
              CustomTextField(
                hintText: "Gender",
                isEnabled: true,
                controller: _controllers[5],
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
