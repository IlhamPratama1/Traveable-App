class PlaceCategoryModel {
  String category;

  PlaceCategoryModel(this.category);
}

List<PlaceCategoryModel> placeCategories =
    categoriesData.map((item) => PlaceCategoryModel(item['category'])).toList();

List categoriesData = [
  {'category': 'All'},
  {'category': 'Recomended'},
  {'category': 'Popular'},
  {'category': 'Most Viewed'},
  {'category': 'Nearest'}
];
