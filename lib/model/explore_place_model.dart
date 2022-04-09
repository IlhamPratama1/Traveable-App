class ExplorePlaceModel {
  String place;
  String country;
  double rating;
  String imageUrl;

  ExplorePlaceModel(this.place, this.country, this.rating, this.imageUrl);
}

List<ExplorePlaceModel> explorePlace = exploreData
    .map((item) => ExplorePlaceModel(
        item['place'], item['country'], item['rating'], item['url']))
    .toList();

List exploreData = [
  {
    'place': 'Cinque Terre',
    'country': 'Italy',
    'rating': 5.0,
    'url': 'assets/images/place_1.jpg'
  },
  {
    'place': 'Cinque Terre',
    'country': 'Italy',
    'rating': 5.0,
    'url': 'assets/images/place_3.jpg'
  },
  {
    'place': 'Cinque Terre',
    'country': 'Italy',
    'rating': 4.0,
    'url': 'assets/images/place_2.jpg'
  },
  {
    'place': 'Cinque Terre',
    'country': 'Italy',
    'rating': 5.0,
    'url': 'assets/images/place_4.jpg'
  }
];
