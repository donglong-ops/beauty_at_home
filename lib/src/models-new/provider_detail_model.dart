import 'dart:convert';

import 'package:flutter_app/src/models-new/address_model.dart';
import 'package:flutter_app/src/models-new/gallery_model.dart';
import 'package:flutter_app/src/models-new/image_model.dart';
import 'package:flutter_app/src/models-new/service_model.dart';
import 'package:flutter_app/src/models-new/feedback_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'provider_detail_model.g.dart';

@JsonSerializable()
class ProviderModel {
  int id;
  String displayName;
  String description;
  List<AddressModel> addresses;
  String status;
  double rateScore;
  double totalFeedback;
  String reviews;
  String lowerPrice;
  String upperPrice;
  String phone;
  // String openTime;
  // String closeTime;
  GalleryModel gallery;
  List<ServiceModel> services;

  ProviderModel({
    this.id,
    this.displayName,
    this.description,
    this.addresses,
    this.status,
    this.rateScore,
    this.reviews,
    this.lowerPrice,
    this.upperPrice,
    this.gallery,
    this.services,
    this.totalFeedback,
    this.phone,
  });

  factory ProviderModel.fromJson(Map<String, dynamic> json) =>
      _$ProviderModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProviderModelToJson(this);

  // factory ProviderModel.fromMap(Map<String, dynamic> map) {
  //   return new ProviderModel(
  //     displayName: map['displayName'] as String,
  //     description: "map['description'] as String",
  //     addresses: List<AddressModel>.from(
  //         map['addresses']?.map((x) => AddressModel.fromMap(x))),
  //     status: map['status'] as String,
  //     // rate: map['rate'] as double,
  //     rate: 5,
  //     reviews: "1440",
  //     // reviews: map['reviews'] as String,
  //     // lowerPrice: map['lowerPrice'] as String,
  //     // upperPrice: map['upperPrice'] as String,
  //     lowerPrice: "50000",
  //     upperPrice: "500000",
  //     gallery: GalleryModel.fromMap(map['gallery']),
  //     services: List<ServiceModel>.from(
  //         map['services']?.map((x) => ServiceModel.fromMap(x))),
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   // ignore: unnecessary_cast
  //   return {
  //     'displayName': this.displayName,
  //     'description': this.description,
  //     'addresses': this.addresses,
  //     'status': this.status,
  //     'rate': this.rate,
  //     'reviews': this.reviews,
  //     'lowerPrice': this.lowerPrice,
  //     'upperPrice': this.upperPrice,
  //     'gallery': this.gallery,
  //     'services': this.services,
  //   } as Map<String, dynamic>;
  // }

  // String toJson() => json.encode(toMap());

  // factory ProviderModel.fromJson(String source) =>
  //     ProviderModel.fromMap(json.decode(source));

  // ProviderModel({
  //   this.displayName,
  //   this.description,
  //   this.address,
  //   this.status,
  //   this.rate,
  //   this.reviews,
  //   this.lowerPrice,
  //   this.upperPrice,
  //   // this.openTime,
  //   // this.closeTime,
  //   this.imageUrl,
  //   this.services,
  // });

  // Map<String, dynamic> toMap() {
  //   return {
  //     'displayName': displayName,
  //     'description': description,
  //     'address': address,
  //     'status': status,
  //     'rate': rate,
  //     'reviews': reviews,
  //     'lowerPrice': lowerPrice,
  //     'upperPrice': upperPrice,
  //     // 'openTime': openTime,
  //     // 'closeTime': closeTime,
  //     'imageUrl': imageUrl,
  //     'services': services?.map((x) => x.toMap())?.toList(),
  //   };
  // }

  // factory ProviderModel.fromMap(Map<String, dynamic> map) {
  //
  //   String status = map['status'];
  //   if (status == 'ACTIVE') {
  //     status = "??ang ho???t ?????ng";
  //   } else if (status == "INACTIVE") {
  //     status = "Kh??ng ho???t ?????ng";
  //   }
  //
  //
  //
  //   return ProviderModel(
  //     displayName: map['displayName'],
  //     description: "map['description']",
  //     address: "map['address']",
  //     status: status,
  //     rate: 5,
  //     reviews: "1440",
  //     lowerPrice: "map['lowerPrice']",
  //     upperPrice: "map['upperPrice']",
  //     // openTime: "map['openTime']",
  //     // closeTime: "map['closeTime']",
  //     imageUrl: map['imageUrl'],
  //     services: List.from([
  //       ServiceModel(
  //         name: '90 ph??t Massage body to??n th??n',
  //         // description: [
  //         //   'B?????c 1: l??m s???ch tay b???ng Cool Blue',
  //         //   'B?????c 2: d??a m??ng theo khu??n kh??ch y??u c???u',
  //         //   'B?????c 3: l??m m???m da tr??n m???t m??ng v???i gel bi???u b??',
  //         //   'B?????c 4: d??ng c??y ?????y da ?????y nh??? tr??n m???t m??ng v?? lau s???ch b???ng b??ng',
  //         // ],
  //         price: '500',
  //         estimateTime: 30,
  //         status: "??ang ho???t ?????ng",
  //         category: 'Massage',
  //         imageUrl:
  //         "https://meta.vn/Data/image/2020/12/04/massage-mat-co-tac-dung-gi-3.png",
  //         serviceImages: List.from([
  //           'public/img/massage_1.png',
  //           'public/img/massage_2.jpg',
  //           'public/img/massage_3.jpg',
  //           'public/img/massage_4.jpg',
  //           'public/img/massage_5.jpg',
  //           'public/img/massage_6.jpg',
  //           'public/img/massage_7.png',
  //           'public/img/massage_8.jpg',
  //         ]),
  //         isServiceCombo: false,
  //         summary: 'Bao g???m m??? ph???m l??m ?????p v?? d???ng c???',
  //       ),
  //       ServiceModel(
  //         name: 'L??m s???ch v?? s??n gel',
  //         // description: [
  //         //   'B?????c 1: l??m s???ch tay b???ng Cool Blue',
  //         //   'B?????c 2: d??a m??ng theo khu??n kh??ch y??u c???u',
  //         //   'B?????c 3: l??m m???m da tr??n m???t m??ng v???i gel bi???u b??',
  //         //   'B?????c 4: d??ng c??y ?????y da ?????y nh??? tr??n m???t m??ng v?? lau s???ch b???ng b??ng',
  //         //   'B?????c 5: l??m s???ch dung d???ch gel s??t tr??n da v?? d??ng ki???m nh???t da s??t l???i',
  //         //   'B?????c 6: l??m s???ch m???t m??ng v???i dung d???ch l??m kh?? chuy??n bi???t',
  //         //   'B?????c 7: s??n gel',
  //         //   'B?????c 8: thao d?????ng kh??e m??ng v?? m??ng b???ng culticle eraser v?? solar oil'
  //         // ],
  //         price: '200',
  //         estimateTime: 30,
  //         status: "??ang ho???t ?????ng",
  //         category: 'L??m M??ng',
  //         imageUrl:
  //         "https://cuahanglamdep.com/images/detailed/3/noi-mi-3d-tai-meli-spa-1.jpg",
  //         serviceImages: List.from([
  //           'public/img/nail_1.jpg',
  //           'public/img/nail_2.jpg',
  //           'public/img/nail_3.png',
  //           'public/img/nail_4.png',
  //           'public/img/nail_5.png',
  //           'public/img/nail_6.png',
  //           'public/img/nail_7.png',
  //           'public/img/nail_8.jpg',
  //         ]),
  //         isServiceCombo: false,
  //         summary: 'Bao g???m m??? ph???m l??m ?????p v?? d???ng c???',
  //       ),
  //       ServiceModel(
  //         name: 'T??c xo??n t??? nhi??n',
  //         //   description: [
  //         //     'B?????c 1: l??m s???ch tay b???ng Cool Blue',
  //         //     'B?????c 2: d??a m??ng theo khu??n kh??ch y??u c???u',
  //         //     'B?????c 3: l??m m???m da tr??n m???t m??ng v???i gel bi???u b??',
  //         //     'B?????c 4: d??ng c??y ?????y da ?????y nh??? tr??n m???t m??ng v?? lau s???ch b???ng b??ng',
  //         //   ],
  //         price: '500',
  //         estimateTime: 30,
  //         status: "??ang ho???t ?????ng",
  //         category: 'L??m t??c',
  //         imageUrl:
  //         'https://i.pinimg.com/originals/96/9e/22/969e22a9ffc82d8d6915044f504e8604.png',
  //         serviceImages: List.from([
  //           'public/img/massage_1.png',
  //           'public/img/massage_2.jpg',
  //           'public/img/massage_3.jpg',
  //           'public/img/massage_4.jpg',
  //           'public/img/massage_5.jpg',
  //           'public/img/massage_6.jpg',
  //           'public/img/massage_7.png',
  //           'public/img/massage_8.jpg',
  //         ]),
  //         isServiceCombo: false,
  //         summary: 'Bao g???m m??? ph???m l??m ?????p v?? d???ng c???',
  //       ),
  //       ServiceModel(
  //         name: 'Trang ??i???m t??? nhi??n',
  //         // description: [
  //         //   'B?????c 1: l??m s???ch tay b???ng Cool Blue',
  //         //   'B?????c 2: d??a m??ng theo khu??n kh??ch y??u c???u',
  //         //   'B?????c 3: l??m m???m da tr??n m???t m??ng v???i gel bi???u b??',
  //         //   'B?????c 4: d??ng c??y ?????y da ?????y nh??? tr??n m???t m??ng v?? lau s???ch b???ng b??ng',
  //         //   'B?????c 5: l??m s???ch dung d???ch gel s??t tr??n da v?? d??ng ki???m nh???t da s??t l???i',
  //         //   'B?????c 6: l??m s???ch m???t m??ng v???i dung d???ch l??m kh?? chuy??n bi???t',
  //         //   'B?????c 7: s??n gel',
  //         //   'B?????c 8: thao d?????ng kh??e m??ng v?? m??ng b???ng culticle eraser v?? solar oil'
  //         // ],
  //         price: '200',
  //         estimateTime: 30,
  //         status: "??ang ho???t ?????ng",
  //         category: "L??m m??ng",
  //         imageUrl:
  //         'https://mathoadaphan.com/wp-content/uploads/2021/02/c%C3%A1c-b%C6%B0%E1%BB%9Bc-trang-%C4%91i%E1%BB%83m-c%C6%A1-b%E1%BA%A3n.jpg',
  //         serviceImages: List.from([
  //           'public/img/nail_1.jpg',
  //           'public/img/nail_2.jpg',
  //           'public/img/nail_3.png',
  //           'public/img/nail_4.png',
  //           'public/img/nail_5.png',
  //           'public/img/nail_6.png',
  //           'public/img/nail_7.png',
  //           'public/img/nail_8.jpg',
  //         ]),
  //         isServiceCombo: false,
  //         summary: 'Bao g???m m??? ph???m l??m ?????p v?? d???ng c???',
  //       ),
  //     ]),
  //   );
  // }

}
