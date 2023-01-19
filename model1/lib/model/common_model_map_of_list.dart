class MobileDataModel {
  final String? firstPhone;
  final String? appleceo;
  final List<AppleList>? applelist;
  final String? secondPhone;
  final String? samsungCEO;
  final List<SamsungList>? samsungList;

  MobileDataModel({
    this.secondPhone,
    this.samsungCEO,
    this.samsungList,
    this.firstPhone,
    this.appleceo,
    this.applelist,
  });
  factory MobileDataModel.fromJson(Map<String, dynamic> json) {
    return MobileDataModel(
        firstPhone: json['firstPhone'],
        appleceo: json['apple_ceo'],
        applelist: List<AppleList>.from(
            json['apple_list'].map((value) => AppleList.fromJson(value))));
  }
}

class AppleList {
  final String? model;
  final int? price;

  AppleList({
    this.model,
    this.price,
  });
  factory AppleList.fromJson(Map<String, dynamic> json) {
    return AppleList(
      model: json["model"],
      price: json["prise"],
    );
  }
}

class SamsungList {
  final String? model;
  final int? price;

  SamsungList({
    this.model,
    this.price,
  });
  factory SamsungList.fromJson(Map<String, dynamic> json) {
    return SamsungList(
      model: json["model"],
      price: json["price"],
    );
  }
}
