// post_dto.dart

// 테이블 용
class MovieDTOTable {
  String office; // 박스오피스
  String showrange; // 날짜 범위
  String officelist; // 영화리스트
  // 생성자
  MovieDTOTable({
    required this.office,
    required this.showrange,
    required this.officelist,
  });

  // 생성자를 이용한 팩토리 함수
  factory MovieDTOTable.fromJson(dynamic json) => MovieDTOTable(
    office: json["office"],
    showrange: json["showrange"],
    officelist: json["officelist"],
  );

  // 팩토리를 이용한 함수
  static List<MovieDTOTable> fromJsonList(List jsonList) {
    return jsonList.map((json) => MovieDTOTable.fromJson(json)).toList();
  }
}

// 상세 페이지 용
class MovieDTODetail {
  String office; // 박스오피스
  String showrange; // 날짜 범위
  String officelist; // 영화리스트


  MovieDTODetail(
      {required this.office,
        required this.showrange,
        required this.officelist,}); // 내용
}
