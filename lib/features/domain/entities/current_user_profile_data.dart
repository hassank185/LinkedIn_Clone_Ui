

class CurrentUserProfileData {
  final String? name;
  final String? connections;
  final String? viewProfile;
  final String? headline;
  final String? profileUrl;

  CurrentUserProfileData({
    this.name,
    this.connections,
    this.viewProfile,
    this.headline,
    this.profileUrl,
  });
}

class CurrentUserProfileClass {
  static final currentUserProfileData = CurrentUserProfileData(

      headline: "flutter developer",
      profileUrl: "assets/profiles/myprofile.JPG",
      name: "Muhammad Hassan",
      connections: "1,837",
      viewProfile: "300"

  );
}