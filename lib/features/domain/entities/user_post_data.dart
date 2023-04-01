class UserPostData {
  final String? profileUrl;
  final String? name;
  final String? headline;
  final bool? isVideoPost;
  final String? description;
  final String? video;
  final String? image;
  final String? comments;
  final String? likes;
  final String? tags;
  final bool? isOnline;
  final String? repost;

  UserPostData( {
    this.repost,
    this.profileUrl,
    this.name,
    this.headline,
    this.isVideoPost,
    this.description,
    this.video,
    this.image,
    this.comments,
    this.likes,
    this.tags,
    this.isOnline,
  });
}




class UserPostClass{
  static final List<UserPostData> userPostList =[
    UserPostData(
        name: "Shehroz Jamal",
        profileUrl: "assets/profile4.jpg",
        headline: "HR Executive ",
        tags: "#positivity #motivation #learning #progress #development #networking #business #jobhunters #jobseekers #connections #networking #linkedin #nevergiveup #staypositive #staystrong #positiveattitude",
        description: "Stay Strong!\n\nKeep Your Head Up!\n\nRejection means a better opportunity awaits you elsewhere.\n\nYour thoughts?",
        isVideoPost: false,
        comments: "100",
        video: "",
        isOnline: false,
        image: "assets/post2.jpg",
        likes: "800",
        repost: "12 reposts"

    ),
    UserPostData(
        name: "Arslan nasir",
        profileUrl: "assets/profile6.jpg",
        headline: "Freelancer",
        tags: "#Coding #Something #GeogrAPHY #aFRICA #JavaScript #Best",
        description: "Without the sweat, toil and \n\nsacrifices of our heroes, we wouldn’t have this bright day that we celebrate today. Happy Independence Day.",
        isVideoPost: false,
        comments: "1k",
        video: "",
        isOnline: true,
        image: "assets/post6.jpg",
        likes: "20k",
        repost: "4 reposts"
    ),
    UserPostData(
        name: "Mohsin Ali",
        profileUrl: "assets/profile6.jpg",
        headline: "Logo Designer",
        tags: "#datascience #machinelearning #programming #python #joke",
        description: "Google and Stack OverFlow are the best Platform.",
        isVideoPost: false,
        comments: "100",
        video: "",
        isOnline: true,
        image: "assets/post4.jpg",
        likes: "230",
        repost: "2 reposts"
    ),
    UserPostData(
        name: "Sahar Salimi",
        profileUrl: "assets/profile2.jpg",
        headline: "3D LOGO ANIMATION",
        tags: "#Github #Chrome #Facbook #CloneUi #Flutter #London",
        description: "Hi, Iam A professtional Logo Designer in the World",
        isVideoPost: false,
        comments: "500",
        video: "",
        isOnline: false,
        image: "assets/post2.jpg",
        likes: "10k",
        repost: ""
    ),
    UserPostData(
        name: "Ali Raza",
        profileUrl: "assets/profile2.jpg",
        headline: "Content Specialist",
        tags: "#MS Word #Writing #Sills #Alphabets #caligraphy",
        description: "The world famous football player\n\n Sadio Mane of Senegal (West Africa), whose income in Indian rupees is around Rs. 1 crore 40 lacs per week, was seen in many places with a broken mobile phone. In an interview when asked about it, he said, I'll get it fixed. When asked, Why you are not buying a new one? He said, I could buy thousands of it, 10s Ferraris, couple of Jet Planes, Diamond watches that I can buy, but why do I need all of these? I saw poverty, so I couldn't learn, I built schools so that people could learn, I didn't have shoes, I played without shoes, I didn't have good clothes, I didn't have food. I have so much today that I want to share it with my people instead of showing off.Huge respect for him! We all must spend atleast some portion of our excess incomes in people who are deserving and can't even buy necessities.",
        isVideoPost: false,
        comments: "400",
        video: "videos/flutterIntro.mp4",
        isOnline: false,
        image: "assets/post2.jpg",
        likes: "1.1k",
        repost: ""
    ),
    UserPostData(
        name: "Flutter World",
        profileUrl: "assets/flutter_logo.png",
        headline: "Flutter Drat world",
        tags: "#FlutterOpenProject, #FlutterMagicWorld, #Mobile&WebOpenApps, #Flutter+Dart❤️",
        description: "Flutter is an open-source mobile application \n\ndevelopment framework created by Google. It is used to develop applications for Android and iOS, as well as being the primary method of creating applications for Google Fuchsia.",
        isVideoPost: false,
        comments: "20k",
        video: "videos/flutterIntro.mp4",
        isOnline: true,
        image: "assets/flutter_post.jpeg",
        likes: "101k",
        repost: ""
    ),
    UserPostData(
        name: "Amazon Web Service (AWS)",
        profileUrl: "assets/profile4.jpg",
        headline: "4,594,488 followers",
        tags: "",
        description: "Better protect your S3 data with expanded Amazon GuardDuty threat detection to monitor for suspicious data access & other threats:",
        isVideoPost: false,
        comments: "400",
        video: "",
        isOnline: false,
        image: "assets/post5.jpg",
        likes: "1k",
        repost: ""
    ),
  ];
}
