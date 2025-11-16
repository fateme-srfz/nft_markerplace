class TrendingClass {
  final String title;
  final String imageurl;
  final int like;

  TrendingClass({
    required this.title,
    required this.imageurl,
    required this.like,
  });

  static List<TrendingClass> trendinglist = [
    TrendingClass(
      title: 'Abstract Art',
      imageurl: 'assets/images/prtart.jpg',
      like: 200,
    ),
    TrendingClass(
      title: 'Portrait Art',
      imageurl: 'assets/images/abstart.jpg',
      like: 250,
    ),
    TrendingClass(
      title: 'Visual Art',
      imageurl: 'assets/images/visart.jpg',
      like: 150,
    ),
  ];
}
