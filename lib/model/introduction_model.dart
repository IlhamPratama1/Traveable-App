class IntroductionModel {
  String imageUrl;
  String boldTitle;
  String medTitle;
  String subtitle;

  IntroductionModel(
      this.imageUrl, this.medTitle, this.boldTitle, this.subtitle);
}

final introductionData = <IntroductionModel>[
  IntroductionModel(
      'assets/images/introduction_1.jpg',
      'Explore',
      '  New\nPlace',
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text."),
  IntroductionModel(
      'assets/images/introduction_2.jpg',
      'Explore',
      '  New\nPlace',
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text."),
  IntroductionModel(
      'assets/images/introduction_3.jpg',
      'Explore',
      '  New\nPlace',
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text."),
];
