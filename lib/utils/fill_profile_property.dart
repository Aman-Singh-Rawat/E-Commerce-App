import 'package:flutter/cupertino.dart';
import 'package:shoesy/utils/profile_enum.dart';

final Map<ProfileEnum, TextEditingController> controllers = {
  ProfileEnum.fullName: TextEditingController(), // 0 -> full name
  ProfileEnum.nickName: TextEditingController(), // 1 -> nickname
  ProfileEnum.dateOfBirth: TextEditingController(), // 2 -> D.O.B
  ProfileEnum.email: TextEditingController(), // 3 -> Email
  ProfileEnum.phoneNumber: TextEditingController(), // 4 -> PhoneNumber
  ProfileEnum.gender: TextEditingController(), // 5 -> Gender
};