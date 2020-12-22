 import 'order.dart';

class Orders {
  List<Order> orders_now = [
    Order(status:"جاري التجهيز",colorBt: 0xffEDF2FB,colorTextBt:0xff00B5F0 ),
    Order(status:"جاري التوصيل",colorBt: 0xffEFE1F5,colorTextBt:0xff9D1DD2 ),
    Order(status:"طلب جديد",colorBt: 0xffFDF0E8,colorTextBt:0xffE86E22 ),
    // Order(status:"جاري التوصيل",color: 0xff000000),
    // Order(status:"طلب جديد",color: 0xffFFFFFF),
    // Order(status:"طلب مكتمل",color: 0xffFFFFFF),
    // Order(status:"طلب ملغي",color: 0xffFFFFFF),
  ];
  List<Order> order_previos = [
    Order(status:"طلب مكتمل",colorBt: 0xffD3ECDD,colorTextBt:0xff27AE5D ),
    Order(status:"طلب ملغي",colorBt: 0xffFEE8E5,colorTextBt:0xffF45540 ),
    Order(status:"طلب مكتمل",colorBt: 0xffD3ECDD,colorTextBt:0xff27AE5D ),
    // Order(status:"جاري التوصيل",color: 0xff000000),
    // Order(status:"طلب جديد",color: 0xffFFFFFF),
    // Order(status:"طلب مكتمل",color: 0xffFFFFFF),
    // Order(status:"طلب ملغي",color: 0xffFFFFFF),
  ];
}