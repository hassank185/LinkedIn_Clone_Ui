class NetworkData {
  final String? bgImage;
  final String? profileUrl;
  final String? username;
  final String? description;
  final num? connections;

  NetworkData({
    this.bgImage,
    this.profileUrl,
    this.username,
    this.description,
    this.connections,
  });
}

class NetworkDataClass {
  static final List<NetworkData> networkData = [
    NetworkData(
      username: "Komal Khan",
      description: "Digital Banking Officer",
      connections: 2,
      profileUrl: "assets/profiles/profile1.jpg",
      bgImage: "assets/profiles/bgImage1.jpg",
    ),
    NetworkData(
      username: "Shahnoor Hussain",
      description: "Search Engine Optim...",
      connections: 12,
      profileUrl: "assets/profiles/profile2.jpg",
      bgImage: "assets/profiles/bgImage2.jpg",
    ),
    NetworkData(
      username: "Adnan Khan",
      description: "Flutter Developer co-Fo...",
      connections: 41,
      profileUrl: "assets/profiles/profile3.jpg",
      bgImage: "assets/profiles/bgImage3.jpg",
    ),
    NetworkData(
      username: "Amir Khan",
      description: "Flutter Developer Fou...",
      connections: 32,
      profileUrl: "assets/profiles/profile4.jpg",
      bgImage: "assets/profiles/bgImage4.jpg",
    ),
    NetworkData(
      username: "Fatima Mirza",
      description: "--",
      connections: 81,
      profileUrl: "assets/profiles/profile5.jpg",
      bgImage: "assets/profiles/bgImage5.jpg",
    ),
    NetworkData(
      username: "Hareem Khan",
      description: "Social Media Inf...",
      connections: 121,
      profileUrl: "assets/profiles/profile6.jpg",
      bgImage: "assets/profiles/bgImage6.jpg",
    ),
    NetworkData(
      username: "Allison Burger",
      description: "Actor FilmMaker",
      connections: 6,
      profileUrl: "assets/profiles/profile7.jpg",
      bgImage: "assets/profiles/bgImage7.jpg",
    ),
    NetworkData(
      username: "Lydia ",
      description: "UI/UX Designer Pro...",
      connections: 14,
      profileUrl: "assets/profiles/profile8.jpg",
      bgImage: "assets/profiles/bgImage8.jpg",
    ),
  ];
}
