

class SetContactUsFormApi {
  String success;
  bool status;

  SetContactUsFormApi({this.success, this.status});

  SetContactUsFormApi.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['status'] = this.status;
    return data;
  }

}