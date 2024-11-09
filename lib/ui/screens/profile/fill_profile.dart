import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/widgets/custom_textfield.dart';

class FillProfile extends StatelessWidget {
  const FillProfile({super.key});

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
                inputType: TextInputType.name,
              ),
              CustomTextField(
                hintText: "Nickname",
                inputType: TextInputType.name,
              ),
              CustomTextField(
                hintText: "Date of Birth",
                isEnabled: true,
                onClicked: () {
                  _selectDate(context);
                },
                inputType: TextInputType.datetime,
                suffixIcon: Icons.calendar_month,
              ),
              CustomTextField(
                hintText: "Email",
                inputType: TextInputType.emailAddress,
                suffixIcon: Icons.email_outlined,
              ),
              CustomTextField(
                hintText: "Phone Number",
                inputType: TextInputType.datetime,
              ),
              CustomTextField(
                hintText: "Gender",
                isEnabled: true,
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
