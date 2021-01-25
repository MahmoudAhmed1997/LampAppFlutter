class AddToFavApi {
  int favoritesCount;
  bool isAdd;
  String message;
  bool status;

  AddToFavApi({this.favoritesCount, this.isAdd, this.message, this.status});

  AddToFavApi.fromJson(Map<String, dynamic> json) {
    favoritesCount = json['favoritesCount'];
    isAdd = json['isAdd'];
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['favoritesCount'] = this.favoritesCount;
    data['isAdd'] = this.isAdd;
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}