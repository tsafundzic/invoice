import 'package:intl/intl.dart';

extension FormatDate on DateTime {
  String get presentationDate {
    try {
      return DateFormat("dd.MM.yyyy.").format(this);
    } catch (e) {
      return "";
    }
  }

  String get presentationHourMin {
    try {
      return DateFormat("HH:mm").format(this);
    } catch (e) {
      return "";
    }
  }

  String get presentationDateHourMin {
    try {
      return DateFormat("dd.MM.yyyy. - HH:mm").format(this);
    } catch (e) {
      return "";
    }
  }
}