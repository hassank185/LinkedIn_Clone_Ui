class RecommendationData {
  final String? name;
  final String? type;
  final String? locaion;
  final String? time;
  final String? info;
  final String? img;

  RecommendationData({
    this.name,
    this.img,
    this.type,
    this.locaion,
    this.time,
    this.info,
  });

}

class RecommendedDataClass {
  static List<RecommendationData> recommendationData = [
    RecommendationData(
      name: "Junior Flutter Developer",
      type: "Turing",
      locaion: "Pakistan (Remote)",
      info: "Actively recruiting",
      time: "2 weeks ago",
      img: "assets/profiles/company1.jpg"
    ),
    RecommendationData(
      name: "Software Engineer (Remote) ",
      type: "Crossover",
      locaion: "Rawalpindi, Punjab",
      info: "",
      time: "Promoted.",
        img: "assets/profiles/company2.jpg"
    ),
    RecommendationData(
      name: "Social Media Evaluator",
      type: "Appen",
      locaion: "Faisalabad, Punjab",
      info: "Message the job poster",
      time: "Promoted",
        img: "assets/profiles/company3.jpg"
    ),

  ];
}