class ProductModel {
  String id = "";
  String name = "";
  double price = 0;
  List<LaptopProductModel> listLaptopProduct = [];

  ProductModel.empty();

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['\$id'];
    name = json['name'];
    price = json['price'];
    listLaptopProduct = json['listLaptopProduct'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['os'] = name;
    data['price'] = price;
    data['listLaptopProduct'] = listLaptopProduct;
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
    id = json['\$id'];
    model = json['model'];
    processor = json['processor'];
    screen = json['screen'];
    memory = json['memory'];
    diskSpace = json['diskSpace'];
    graphic = json['graphic'];
    os = json['os'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['model'] = model;
    data['processor'] = processor;
    data['screen'] = screen;
    data['memory'] = memory;
    data['diskSpace'] = diskSpace;
    data['graphic'] = graphic;
    data['os'] = os;
    return data;
  }
}
