import 'package:intl/intl.dart';

String getFormattedDate(DateTime date) {
  return DateFormat("dd MMMM, EEEE").format(date);
}
get getGreeting {
  var hour = DateTime.now().hour;

  if (hour < 12) {
    return 'Good morning';
  } else if (hour < 17) {
    return 'Good afternoon';
  } else {
    return 'Good evening';
  }
}