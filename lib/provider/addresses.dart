import 'package:lamp/provider/address.dart';

class Addresses {
  List<Address> _addresses_list = [
    Address(true),
    Address(false),
    Address(false),



  ];
  List<Address> get addresses_list {
    return _addresses_list ;
  }
}