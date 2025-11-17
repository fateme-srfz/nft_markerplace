class SellerClass {
  final String title;
  final String imageurl;
  final double price;
  final int like;

  SellerClass({
    required this.title,
    required this.imageurl,
    required this.price,
    required this.like,
  });

  static List<SellerClass> sellerlist = [
    SellerClass(
      title: 'Product 1',
      imageurl: 'assets/images/top1.jpg',
      price: 260,
      like: 487,
    ),

    SellerClass(
      title: 'Product 2',
      imageurl: 'assets/images/top2.jpg',
      price: 358,
      like: 506,
    ),

    SellerClass(
      title: 'Product 3',
      imageurl: 'assets/images/top3.jpg',
      price: 156,
      like: 364,
    ),
  ];
}
