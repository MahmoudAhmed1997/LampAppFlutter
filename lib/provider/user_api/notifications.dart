//
// class notificationApi {
//   List notifications;
//
//   notificationApi({this.notifications});
//
//   notificationApi.fromJson(Map<String, dynamic> json) {
//     if (json['notifications'] != null) {
//       notifications = new List<Null>();
//       json['notifications'].forEach((v) {
//         notifications.add(new Null.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.notifications != null) {
//       data['notifications'] =
//           this.notifications.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }