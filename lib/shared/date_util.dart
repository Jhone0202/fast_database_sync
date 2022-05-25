import 'package:intl/intl.dart';

String getDate(DateTime dateTime) {
  return DateFormat('dd/MM/yyyy').format(dateTime);
}

String getNamedDateTime(DateTime dateTime, {bool? separator}) {
  if (separator == null || separator == false) {
    return DateFormat('dd MMM, yyyy - HH:mm:ss', 'pt_br').format(dateTime);
  } else {
    return DateFormat('dd MMM\nHH:mm', 'pt_br').format(dateTime).toUpperCase();
  }
}
