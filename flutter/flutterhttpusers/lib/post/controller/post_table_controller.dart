import 'package:flutter/foundation.dart';
import 'package:flutterhttpusers/post/model/dto/postdto.dart';
import 'package:flutterhttpusers/post/model/repository/post_repository.dart';

class PostTableController extends ChangeNotifier {
  List<PostDTOTable>? _postDTOTableList;

  List<PostDTOTable>? get postDTOTableList => _postDTOTableList;

  void setPostDTOTableList() {
    PostRepository.instance.getDTOList().then((value){
      _postDTOTableList = value;
      notifyListeners();
    });
  }
}