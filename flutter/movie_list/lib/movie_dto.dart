// post_dto.dart

// 테이블 용
class MovieDTOTable {
  String movieCd;
  String movieNm;
  String openDt;
  // 생성자
  MovieDTOTable({
    required this.movieCd,
    required this.movieNm,
    required this.openDt,
  });

  // 생성자를 이용한 팩토리 함수
  factory MovieDTOTable.fromJson(dynamic json) => MovieDTOTable(
    movieCd: json["movieCd"],
    movieNm: json["movieNm"],
    openDt: json["openDt"],
  );

  // 팩토리를 이용한 함수
  static List<MovieDTOTable> fromJsonList(List jsonList) {
    return jsonList.map((json) => MovieDTOTable.fromJson(json)).toList();
  }
}
