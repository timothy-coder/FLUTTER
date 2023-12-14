import 'package:intl/intl.dart';

class TFormatter{
  static String formatDate(DateTime? date){
    date ??=DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US',symbol: '\s').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    if(phoneNumber.length==9){
      return '${phoneNumber.substring(0,6)}';
    }
    return phoneNumber;
  }
}