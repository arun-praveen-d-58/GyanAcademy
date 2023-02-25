import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_outlineButton.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTopicCard extends StatelessWidget {

  final String url;
  final String profileUrl;
  final String userName;
  final String title;
  final String level;
  final int lessons;
  final String captions;
  final String duration;
  final double rating;
  final Color color;
  const CustomTopicCard({Key? key, required this.url, required this.title, required this.color, required this.profileUrl, required this.userName, required this.lessons, required this.captions, required this.duration, required this.rating, required this.level}) : super(key: key);

  //const CustomTopicCard({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 328,
            decoration: BoxDecoration(
              color: Colors.white,
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 13),
              child: Column(
                mainAxisSize: MainAxisSize.max,

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /*
                  Image.network(
                    'https://picsum.photos/seed/95/600',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  */
              Image.asset(url),
                  SizedBox(height: 13,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Column(

                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 20.56,
                              width: 2.65,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 8,),
                            SizedBox(
                              width: 240.w,
                              child: Text(title,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  color: Colors.black,
                                ),),
                            )
                          ],
                        ),


                    SizedBox(height: 12,),
                    Row(
                      children: [
                        Text("$lessons",
                          style: TextStyle(
                            fontSize: 10.09,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(" lessons",
                        style: TextStyle(
                        fontSize: 10.09,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        ),
                        ),
                        SizedBox(width: 7,),
                        Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue,
                        ),
                        height: 3.88,
                        width: 3.88,
                        ),
                        SizedBox(width: 7,),
                        Text(duration,
                        style: TextStyle(
                          fontSize: 10.09,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        SizedBox(width: 7,),
                        Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue,
                        ),
                        height: 3.88,
                        width: 3.88,
                        ),
                        SizedBox(width: 7,),
                        Text(level,
                        style: TextStyle(
                          fontSize: 10.09,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                      ],
                    ),
                        SizedBox(height: 15,),
                        Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(profileUrl,
                        ),
                          radius: 10,
                          ),
                          //  SvgPicture.asset("assets/learningPath/star.svg",height: 11,width: 11,),
                          SizedBox(width: 7,),
                          Text(userName,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                          ),
                          SizedBox(width: 12,),
                          SvgPicture.asset("assets/learningPath/star.svg",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("$rating",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                          ),
                        ],
                        ),
                        SizedBox(height: 15,),
                         Text(captions,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          ),


                      ],
                    ),
                  ),
                 SizedBox(height: 12,),
                  Container(

                    width: double.infinity,
                    color: Colors.white,
                    child: Center(
                      child: CustomOutlineButton(color: HexColor("#5562DF"),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
