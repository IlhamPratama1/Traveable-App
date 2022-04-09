class NewHotelModel {
  String name;
  String country;
  String imageUrl;
  double rating;

  NewHotelModel(this.name, this.country, this.imageUrl, this.rating);
}

List<NewHotelModel> newHotels = newHotelData
    .map((item) => NewHotelModel(
        item['name'], item['country'], item['url'], item['rating']))
    .toList();

List newHotelData = [
  {
    'name': 'Modern Pool Hotel',
    'country': 'Italy',
    'rating': 5.0,
    'url': 'assets/images/hotel_1.jpg'
  },
  {
    'name': 'Modern Pool Hotel',
    'country': 'Italy',
    'rating': 5.0,
    'url': 'assets/images/hotel_2.jpg'
  },
  {
    'name': 'Modern Pool Hotel',
    'country': 'Italy',
    'rating': 5.0,
    'url': 'assets/images/hotel_3.jpg'
  },
  {
    'name': 'Modern Pool Hotel',
    'country': 'Italy',
    'rating': 5.0,
    'url': 'assets/images/hotel_4.jpg'
  },
  {
    'name': 'Modern Pool Hotel',
    'country': 'Italy',
    'rating': 5.0,
    'url': 'assets/images/hotel_5.jpg'
  },
  {
    'name': 'Modern Pool Hotel',
    'country': 'Italy',
    'rating': 5.0,
    'url': 'assets/images/hotel_6.jpg'
  },
];
