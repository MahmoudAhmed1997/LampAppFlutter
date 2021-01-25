import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:lamp/provider/designer.dart';
import 'package:lamp/constants.dart' as cons;



class AddReviewApi {
  Review review;
  String success;
  bool status;

  AddReviewApi({this.review, this.success, this.status});

  AddReviewApi.fromJson(Map<String, dynamic> json) {
    review =
    json['review'] != null ? new Review.fromJson(json['review']) : null;
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.review != null) {
      data['review'] = this.review.toJson();
    }
    data['success'] = this.success;
    data['status'] = this.status;
    return data;
  }
  Future<AddReviewApi> setReviewApi(int orderId,int userId,int rate,String comment ) async {
    final url = '${cons.Constants.apiUrl}/orders/1/reviews';
    final response = await http.post(url, body: {"order_id": orderId, "user_id": userId,"rate" :rate,"comment":comment});
    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      success = responseData['success'];
      print(success);
      print("AddReviewApi ${response.body}");

      return AddReviewApi.fromJson(jsonDecode(response.body));
    } else {
      print("AddReviewApi error ${response.body}");

      throw Exception('Failed to load album');
    }
  }

}

class Review {
  int orderId;
  int userId;
  int rate;
  String comment;
  String updatedAt;
  String createdAt;
  int id;

  Review(
      {this.orderId,
        this.userId,
        this.rate,
        this.comment,
        this.updatedAt,
        this.createdAt,
        this.id});

  Review.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'];
    userId = json['user_id'];
    rate = json['rate'];
    comment = json['comment'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_id'] = this.orderId;
    data['user_id'] = this.userId;
    data['rate'] = this.rate;
    data['comment'] = this.comment;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}