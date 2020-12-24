import 'package:lamp/provider/payment.dart';

class Payments {
  List<Payment> _payments_list = [
    Payment(image:"assets/icons/visa.png",detailes: "نانمن, 36221 , الأحساء , المنطقة الشرقي...",isChecked: true),
    Payment(image:"assets/icons/mastercard.png",detailes: "نانمن, 36221 , الأحساء , المنطقة الشرقي..." ,isChecked: false),
    Payment(image:"assets/icons/mada_logo.png",detailes: "نانمن, 36221 , الأحساء , المنطقة الشرقي..." ,isChecked: false),

  ];
  List<Payment> get payments_list {
    return _payments_list ;
  }
}