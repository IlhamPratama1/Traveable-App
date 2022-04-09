class PopularDestinationModel {
  String place;
  String imageUrl;

  PopularDestinationModel(this.place, this.imageUrl);
}

List<PopularDestinationModel> popularDestination = destinationData
    .map((item) => PopularDestinationModel(item['place'], item['url']))
    .toList();

List destinationData = [
  {'place': 'Indonesia', 'url': 'assets/images/destination_1.jpg'},
  {'place': 'Italy', 'url': 'assets/images/destination_2.jpg'},
  {'place': 'India', 'url': 'assets/images/destination_3.jpg'},
  {'place': 'England', 'url': 'assets/images/destination_4.jpg'},
  {'place': 'jepang', 'url': 'assets/images/destination_5.jpg'},
  {'place': 'Finland', 'url': 'assets/images/destination_6.jpg'},
  {'place': 'Russia', 'url': 'assets/images/destination_7.jpg'},
];
