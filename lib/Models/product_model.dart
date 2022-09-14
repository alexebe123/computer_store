class ProductModel {
  String id = "";
  String brandName = "";
  String name = "";
  double price = 0;
  List<LaptopProductModel> listLaptopProduct = [];

  ProductModel.empty();

  ProductModel.fromJson(Map<String, dynamic> json) {
    try {
      id = json['\$id'];
    } catch (e) {}
    try {
      name = json['name'];
    } catch (e) {}
    try {
      price = json['price'];
    } catch (e) {}
    try {
      listLaptopProduct = json['listLaptopProduct'];
    } catch (e) {}
    try {
      brandName = json['brandName'];
    } catch (e) {}
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    try {
      data['os'] = name;
    } catch (e) {}
    try {
      data['price'] = price;
    } catch (e) {}
    try {
      data['listLaptopProduct'] = listLaptopProduct;
    } catch (e) {}
    try {
      data['brandName'] = brandName;
    } catch (e) {}
    return data;
  }
}

class LaptopProductModel {
  String id = "";
  String model = "";
  String processor = "";
  String screen = "";
  String memory = "";
  String diskSpace = "";
  String graphic = "";
  String os = "";

  LaptopProductModel.empty();

  LaptopProductModel.fromJson(Map<String, dynamic> json) {
    try {
      id = json['\$id'];
    } catch (e) {}
    try {
      model = json['model'];
    } catch (e) {}
    try {
      processor = json['processor'];
    } catch (e) {}
    try {
      screen = json['screen'];
    } catch (e) {}
    try {
      memory = json['memory'];
    } catch (e) {}
    try {
      diskSpace = json['diskSpace'];
    } catch (e) {}
    try {
      graphic = json['graphic'];
    } catch (e) {}
    try {
      os = json['os'];
    } catch (e) {}
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    try {
      data['model'] = model;
    } catch (e) {}
    try {
      data['processor'] = processor;
    } catch (e) {}
    try {
      data['screen'] = screen;
    } catch (e) {}
    try {
      data['memory'] = memory;
    } catch (e) {}
    try {
      data['diskSpace'] = diskSpace;
    } catch (e) {}
    try {
      data['graphic'] = graphic;
    } catch (e) {}
    try {
      data['os'] = os;
    } catch (e) {}
    return data;
  }
}
