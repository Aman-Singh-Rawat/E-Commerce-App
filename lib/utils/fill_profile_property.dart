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

List<Map<Offers, String>> offersList = [
  {
    Offers.offerDiscount: "30%",
    Offers.offerImage: "assets/images/img_offer_girl.jpeg",
    Offers.offerTitle: "Today Special!",
    Offers.offerSubtitle: "Get discount for every order, only valid for today"
  },

  {
    Offers.offerDiscount: "25%",
    Offers.offerImage: "assets/images/img_boat_airdopes.webp",
    Offers.offerTitle: "Weekends Deals",
    Offers.offerSubtitle: "Get discount for every order, only valid for today"
  },

  {
    Offers.offerDiscount: "40%",
    Offers.offerImage: "assets/images/img_m1_smart_watch.jpg",
    Offers.offerTitle: "New Arrivals",
    Offers.offerSubtitle: "Get discount for every order, only valid for today"
  },

  {
    Offers.offerDiscount: "20%",
    Offers.offerImage: "assets/images/img_offer_shoe.jpeg",
    Offers.offerTitle: "Black Friday",
    Offers.offerSubtitle: "Get discount for every order, only valid for today"
  }
];