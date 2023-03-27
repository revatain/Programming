// 테이블 용
class PostDTOTable {
  int userId;
  int id;
  String title;

  PostDTOTable({required this.userId, required this.title, required this.id});
}

// 상세 페이지 용
class PostDTODetail{
  int userId;
  int id;
  String title;
  String body;

  PostDTODetail(
      {required this.userId,
        required this.title,
        required this.body,
        required this.id}
      );
}