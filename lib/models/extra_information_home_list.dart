class ExtraInformationHomeList {
  final int id;
  final String tittle;
  final String image;

  ExtraInformationHomeList(this.id, this.tittle, this.image);
}

//Example data

List<ExtraInformationHomeList> imageExtraInformation = [
  ExtraInformationHomeList(1, "image 1", 'assets/images/ExtraInfoOne.png'),
  ExtraInformationHomeList(2, "image 2", 'assets/images/ExtraInfoTwo.png'),
  ExtraInformationHomeList(3, "image 3", 'assets/images/ExtraInfoOne.png'),
  ExtraInformationHomeList(4, "image 4", 'assets/images/ExtraInfoTwo.png'),
];
