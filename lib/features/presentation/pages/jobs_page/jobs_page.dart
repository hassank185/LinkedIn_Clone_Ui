import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:linked_in_clone/const/app_const.dart';
import 'package:linked_in_clone/features/domain/entities/recommendation_data.dart';
import 'package:linked_in_clone/features/presentation/widgets/app_bar_widget.dart';
import 'package:linked_in_clone/global/style.dart';

class JobsPage extends StatefulWidget {
  const JobsPage({Key? key}) : super(key: key);

  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {

  final recommendationData = RecommendedDataClass.recommendationData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _rowButtons(icon: Icons.bookmark_border_rounded, text: "My jobs"),
                    _rowButtons(icon: Icons.post_add, text: "Post a job"),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Divider(
                thickness: 12,
                color: Colors.grey[200],
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent searches",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Clear",
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              _recentSearches(
                text: "user experience design",
                text2: "7 new",
                country: "Pakistan",
              ),
              _recentSearches(
                text: "UI/UX designing",
                text2: "1 new",
                country: "India",
              ),
              _recentSearches(
                text: "Flutter Development ",
                text2: "2 new",
                country: "America",
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {},
                child: Text(
                  "Show more",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Divider(
                thickness: 8,
                color: Colors.grey[200],
              ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: recommendationData.length,
              physics: ScrollPhysics(),
              itemBuilder: (context, index){
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recommended for you',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 40),
                            width: 45,
                            height: 45,
                            color: Colors.grey,
                            child: Image.asset("${recommendationData[index].img}",fit: BoxFit.fill,),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recommendationData[index].name!,
                                style:
                                TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              sizeVer(5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    recommendationData[index].type!,
                                  ),
                                  sizeVer(3),
                                  Text(recommendationData[index].locaion!,
                                      style: TextStyle(color: Colors.black54)),
                                  sizeVer(3),
                                  Text(recommendationData[index].info!,
                                      style: TextStyle(color: Colors.black54,fontSize: 13)),
                                  sizeVer(3),
                                  Text(recommendationData[index].time!,
                                      style: TextStyle(color: Colors.black54,fontSize: 12)),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 45),
                            child: Icon(Icons.bookmark_border_rounded),
                          ),
                        ],
                      ),
                      Divider()
                    ],
                  ),
                );
              },
            ),
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[ Text(
                    "Show all",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: kPrimaryColor,
                    ),
                  ),
                    sizeHor(10),
                    Icon(Icons.arrow_forward_outlined,color: kPrimaryColor,)
                  ]

                ),
              ),
              Divider()
            ],
          ),
        ),
      ),
    );
  }

  _rowButtons({
    IconData? icon,
    String? text,
  }) {
    return Row(
      children: [
        Icon(icon),
        sizeHor(5),
        Text(
          "$text",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        )
      ],
    );
  }

  _recentSearches({String? text, text2, country}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "$text",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              sizeHor(10),
              Text(
                "$text2",
                style:
                    TextStyle(color: Colors.green[800], fontWeight: FontWeight.w500),
              )
            ],
          ),
          Text("$country"),
          Divider()
        ],
      ),
    );
  }
}
