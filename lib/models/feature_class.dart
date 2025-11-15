class FeatureClass {
  final String name;
  final String imageurl;
  final bool size;

  FeatureClass({required this.name, required this.imageurl, this.size = false});

  static List<FeatureClass> featureList = [
    FeatureClass(name: 'Music', imageurl: 'assets/images/Music.png'),
    FeatureClass(name: 'Art', imageurl: 'assets/images/Art.png'),
    FeatureClass(name: 'Virtual Worlds', imageurl: 'assets/images/Group 1.png'),
  ];
}
