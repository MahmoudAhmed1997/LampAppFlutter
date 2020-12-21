import 'package:lamp/provider/payment.dart';

class Payments {
  List<Payment> _payments_list = [
    Payment(image:"assets/icons/visa.png",detailes: "نانمن, 36221 , الأحساء , المنطقة الشرقي..." ,nameVisa: "الدفع عبر فيزا كارد",isChecked: true),
    Payment(image:"assets/icons/mastercard.png",detailes: "نانمن, 36221 , الأحساء , المنطقة الشرقي..." ,nameVisa: "الدفع عبر فيزا كارد",isChecked: false),
    Payment(image:"assets/icons/mada_logo.png",detailes: "نانمن, 36221 , الأحساء , المنطقة الشرقي..." ,nameVisa: "الدفع عبر فيزا كارد",isChecked: false),

  ];
  List<Payment> get payments_list {
    return _payments_list ;
  }
}