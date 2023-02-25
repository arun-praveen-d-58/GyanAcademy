import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'custom_outlineButton.dart';

class CustomTitleCard extends StatelessWidget {

  final String url;
  final String title;
  final String subTitle;
  final Color color;
  const CustomTitleCard({Key? key, required this.url, required this.title, required this.subTitle, required this.color}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 287,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
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
                  SizedBox(
                  width: double.infinity,
                 height: 116,
                  child: Stack(
                      children: [
                    Image.asset(url),
                    Opacity(
                      opacity: 0.85,
                      child: Gradient(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 4,
                                color: color,
                              ),
                              SizedBox(width: 10,),
                              Text(title,
                                style: TextStyle(
                                   fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins",
                                  fontSize: 18,
                                  color: Colors.white,
                              ),)
                            ],
                          ),

                          SizedBox(height: 12,),
                          Text(
                            subTitle,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                              fontSize: 11,
                              color: Colors.white
                            ),)
                        ],
                      ),
                    )
                  ]
                  ),


                  ),
                    Container(
                      height: 84,
                      width: double.infinity,
                      color: Colors.white,
                      child: Center(
                        child: CustomOutlineButton(color: HexColor("#5562DF"),),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],



    );
  }
}
class Gradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black, Colors.black54],
        ),
      ),
    );
  }
}
