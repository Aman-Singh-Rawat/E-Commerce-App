import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  List<Map<String, Object>> notifications = [
    {
      "NOTIFICATION_TIME": "Today",
      "NOTIFICATION_TYPE": [
        {
          "NOTIFICATION_ICON": Icons.offline_bolt,
          "NOTIFICATION_TITLE": "30% Special Discount!",
          "NOTIFICATION_DESCRIPTION": "Special promotion only valid today",
        },
      ],
    },
    {
      "NOTIFICATION_TIME": "Yesterday",
      "NOTIFICATION_TYPE": [
        {
          "NOTIFICATION_ICON": Icons.account_balance_wallet,
          "NOTIFICATION_TITLE": "Top Up E-Wallet Successful!",
          "NOTIFICATION_DESCRIPTION": "You have to top up your e-wallet",
        },
        {
          "NOTIFICATION_ICON": Icons.location_on,
          "NOTIFICATION_TITLE": "New Services Available!",
          "NOTIFICATION_DESCRIPTION": "Now you can track orders in real time",
        },
      ],
    },
    {
      "NOTIFICATION_TIME": "December 22, 2024",
      "NOTIFICATION_TYPE": [
        {
          "NOTIFICATION_ICON": Icons.credit_card,
          "NOTIFICATION_TITLE": "Credit Card Connected!",
          "NOTIFICATION_DESCRIPTION": "Credit Card has been linked!",
        },
        {
          "NOTIFICATION_ICON": Icons.person,
          "NOTIFICATION_TITLE": "Account Setup Successful!",
          "NOTIFICATION_DESCRIPTION": "Your account has been created!",
        },
      ],
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBFBFB),
        title: Text(
          "Notification",
          style: GoogleFonts.montserrat(
            color: const Color(0xFF101010),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          final childNotifications =
              notification["NOTIFICATION_TYPE"] as List<Map<String, Object>>;

          return Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification["NOTIFICATION_TIME"] as String,
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF101010),
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 14),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: childNotifications.length,
                  itemBuilder: (context, childIndex) {
                    final childNotification = childNotifications[childIndex];
                    return Card.filled(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xFF101010),
                              radius: 30,
                              child: Icon(
                                childNotification["NOTIFICATION_ICON"]
                                    as IconData,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 5),
                                Text(
                                  childNotification["NOTIFICATION_TITLE"]
                                      as String,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF101010),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  childNotification["NOTIFICATION_DESCRIPTION"]
                                      as String,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF686868),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
