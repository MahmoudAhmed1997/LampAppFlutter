


class ApplyCouponApi {
  String subtotal;
  String discount;
  String total;
  String success;
  bool status;

  ApplyCouponApi(
      {this.subtotal, this.discount, this.total, this.success, this.status});

  ApplyCouponApi.fromJson(Map<String, dynamic> json) {
    subtotal = json['subtotal'];
    discount = json['discount'];
    total = json['total'];
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subtotal'] = this.subtotal;
    data['discount'] = this.discount;
    data['total'] = this.total;
    data['success'] = this.success;
    data['status'] = this.status;
    return data;
  }
}