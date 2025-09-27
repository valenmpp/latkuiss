class GameStore {
  final String name;
  final String releaseDate;
  final List<String> tags;
  final String price;
  final String about;
  final List<String> imageUrls;
  final String reviewAverage;
  final String reviewCount;
  final String linkStore;

  GameStore({
    required this.name,
    required this.releaseDate,
    required this.tags,
    required this.price,
    required this.about,
    required this.imageUrls,
    required this.reviewAverage,
    required this.reviewCount,
    required this.linkStore,
  });
}
