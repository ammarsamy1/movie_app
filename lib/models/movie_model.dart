class MovieModel {
  String title;
  int id;
  String posterPath;
  String overView;
  double popularity;
  MovieModel({
    required this.title,
    required this.id,
    required this.posterPath,
    required this.overView,
    required this.popularity,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      title: json['title'] ?? " No Title",
      id: json['id'] ?? 0,
      posterPath: json['poster_path'] ??
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaia678yAXVtva77Nr4PPbVP8AjxoJgeeRVeZQEBurhw&s=10",
      overView: json['overview'] ?? "un Known",
      popularity: json['popularity'] ?? 0.toDouble(),
    );
  }

  String get posterUrl {
    return "https://image.tmdb.org/t/p/w500$posterPath";
  }
}