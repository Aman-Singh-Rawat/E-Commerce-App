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
    Offers.offerImage: "assets/images/img_offer_girl.png",
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
    Offers.offerImage: "assets/images/img_iphone.png",
    Offers.offerTitle: "New Arrivals",
    Offers.offerSubtitle: "Get discount for every order, only valid for today"
  },

  {
    Offers.offerDiscount: "20%",
    Offers.offerImage: "assets/images/img_offer_shoe.png",
    Offers.offerTitle: "Black Friday",
    Offers.offerSubtitle: "Get discount for every order, only valid for today"
  }
];


List<Map<Products, Object>> productMap = [
  {
    Products.clothes: "Clothes",
    Products.clotheImage: "assets/images/img_clothes.png"
  },

  {
    Products.clothes: "Shoes",
    Products.clotheImage: "assets/images/img_shoes.png"
  },

  {
    Products.clothes: "Bags",
    Products.clotheImage: "assets/images/img_bags.png"
  },

  {
    Products.clothes: "Electronics",
    Products.clotheImage: "assets/images/img_electronics.png"
  },

  {
    Products.clothes: "Watch",
    Products.clotheImage: "assets/images/img_watch.png"
  },

  {
    Products.clothes: "Jewelry",
    Products.clotheImage: "assets/images/img_jewelry.png"
  },

  {
    Products.clothes: "Kitchen",
    Products.clotheImage: "assets/images/img_kitchen.png"
  },

  {
    Products.clothes: "Toys",
    Products.clotheImage: "assets/images/img_toys.png"
  }
];