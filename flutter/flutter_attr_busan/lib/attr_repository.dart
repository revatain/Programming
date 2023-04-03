import 'dart:convert';

import 'package:flutter_attr_busan/attr_dto.dart';
import 'package:http/http.dart' as http;

class AttrRepository{
  static Future<List<AttrDTO>?> getDTO() async {
    final String url = "https://apis.data.go.kr/6260000/AttractionService/getAttractionKr?serviceKey=6S7EGyZXMaBHjB2gPUrKoQAhiYVcNpGUWEBPeG5D6oRHyIYiHZlgtr4B5%2Bub%2FKhphLXz3GM%2BXJHUMPM%2FHPIlmg%3D%3D&pageNo=1&numOfRows=10&resultType=json";
    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) {
      dynamic json = jsonDecode(response.body);
      return AttrDTO.fromJsonList(json["getAttractionKr"]["item"]);
    } else {
      return null;
    }
  }
}