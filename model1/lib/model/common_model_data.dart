class CommonModel {
  final String? phone;
  final String? ceo;
  final int? number;
  final List<PhoneList>? phoneList;

  CommonModel({
    this.number,
    this.phoneList,
    this.phone = "",
    this.ceo = "",
  });
  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
        phone: json["phone"],
        number: json["number"],
        ceo: json["ceo"],
        phoneList: List<PhoneList>.from(
            json['phone_list'].map((value) => PhoneList.fromJson(value))));
  }
}

class PhoneList {
  final String? model;
  final int? price;

  PhoneList({
    this.model,
    this.price,
  });
  factory PhoneList.fromJson(Map<String, dynamic> json) {
    return PhoneList(
      model: json["model"],
      price: json["prise"],
    );
  }
}
