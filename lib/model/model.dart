class musicModel {
  int id;
  String title;
  String imageAddress;
  String musicAddress;
  String duration;

  musicModel(
      {required this.id,
      required this.title,
      required this.imageAddress,
      required this.musicAddress,
      required this.duration});
}

List<musicModel> myList = [
  musicModel(
      id: 0, title: "", imageAddress: "", musicAddress: "", duration: ""),
  musicModel(
      id: 0, title: "", imageAddress: "", musicAddress: "", duration: ""),
  musicModel(
      id: 0, title: "", imageAddress: "", musicAddress: "", duration: ""),
  musicModel(
      id: 0, title: "", imageAddress: "", musicAddress: "", duration: ""),
  musicModel(
      id: 0, title: "", imageAddress: "", musicAddress: "", duration: ""),
];
