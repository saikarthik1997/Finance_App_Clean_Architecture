class HomeDataResponse {
  int? statusCode;
  HomeDataModel? data;

  HomeDataResponse({this.statusCode, this.data});

  HomeDataResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    data = json['data'] != null ? HomeDataModel.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class HomeDataModel {
  String? name;
  List<TilesData>? tilesData;
  List<ServicesData>? servicesData;

  HomeDataModel({this.name, this.tilesData, this.servicesData});

  HomeDataModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['tiles_data'] != null) {
      tilesData = <TilesData>[];
      json['tiles_data'].forEach((v) {
        tilesData!.add(TilesData.fromJson(v));
      });
    }
    if (json['services_data'] != null) {
      servicesData = <ServicesData>[];
      json['services_data'].forEach((v) {
        servicesData!.add(ServicesData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (tilesData != null) {
      data['tiles_data'] = tilesData!.map((v) => v.toJson()).toList();
    }
    if (servicesData != null) {
      data['services_data'] = servicesData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TilesData {
  String? id;
  String? displayLabel;
  String? value;
  String? currency;
  String? buttonTxt;

  TilesData(
      {this.id, this.displayLabel, this.value, this.currency, this.buttonTxt});

  TilesData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayLabel = json['displayLabel'];
    value = json['value'];
    currency = json['currency'];
    buttonTxt = json['button_txt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['displayLabel'] = displayLabel;
    data['value'] = value;
    data['currency'] = currency;
    data['button_txt'] = buttonTxt;
    return data;
  }
}

class ServicesData {
  String? id;
  String? displayLabel;

  ServicesData({this.id, this.displayLabel});

  ServicesData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayLabel = json['displayLabel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['displayLabel'] = displayLabel;
    return data;
  }
}
