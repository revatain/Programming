import 'package:flutter/material.dart';
import 'package:movie_list/movie_dto.dart';

class MovieItem extends StatelessWidget {
  final MovieDTOTable movieDTO;
  const MovieItem({Key? key, required this.movieDTO}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(movieDTO.movieCd),
          Text(movieDTO.movieNm),
          Text(movieDTO.openDt),
        ],
      ),
    );
  }
}
