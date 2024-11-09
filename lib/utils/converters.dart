import 'package:intl/intl.dart';

String getFormattedDate(DateTime date) {
  return DateFormat("dd MMMM, EEEE").format(date);
}