import 'package:dio/dio.dart';

import '../models/movie_model.dart';

class MovieApi {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': 'e3602a2dda72006a90e86a7b731842cc',
      },
    ),
  );
  fetchMovies ()async {
    final response = await dio.get('/movie/popular');
    List moviesList = response.data['results'];
    return moviesList.map((movie) => MovieModel.fromJson(movie)).toList();
  }
}