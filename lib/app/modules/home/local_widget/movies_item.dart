import 'package:app_dp/app/data/model/movie.dart';
import 'package:app_dp/app/utils/constantes.dart';
import 'package:flutter/material.dart';

class MoviesItem extends StatelessWidget {
  final Movie movie;
  const MoviesItem({
    Key key,
    @required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network('${Constantes.URLPATHIMAGE}${movie.posterPath}'),
      title: Text(movie.title),
      subtitle: Text(movie.overview),
    );
  }
}
