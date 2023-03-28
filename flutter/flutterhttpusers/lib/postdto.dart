// post_dto.dart

// 테이블 용
class PostDTOTable {
  int id; // 유저 번호
  String name; // 글 번호
  String email; // 제목

  PostDTOTable({required this.id, required this.name, required this.email});

  // 팩토리
  // 생성자를 통해서 객체를 만들려고 하는데
  // 처리가 번거로울 경우
  // 어떠한 타입을 받아서 클래스 내부에서 객체를 생성해서
  // 리턴 해주기 위함
  factory PostDTOTable.fromJson(dynamic json) => PostDTOTable(
    id: json["id"],
    name: json["name"],
    email: json["email"],
  );
}

// 상세 페이지 용
class PostDTODetail {
  int id; // 유저 번호
  String name; // 글 번호
  String email; // 제목

  PostDTODetail(
      {required this.id, required this.name, required this.email}); // 내용
}
