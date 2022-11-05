import 'package:flutter/material.dart';
import 'package:gyan_academy/constants/global_variables.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomMobFooter extends StatelessWidget {
  const CustomMobFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:150,
      decoration: BoxDecoration(
        gradient: GlobalVariables.mix,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 22,bottom: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Gyan Academy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins",
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            SizedBox(height: 1,
                width: double.infinity,

            child: Divider(color: HexColor("#D9D9D9B2"),)
              ,),
            SizedBox(height: 21,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,// this must be changed to row for tablet design
                  children: [
                    Text(
                      "Bootcamps",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                      ),
                    ),

               SizedBox(height: 9.5,),
                    Text(
                      "Pricing Plans",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                      ),
                    ),

                  ],
                ),

                SizedBox(width: 21,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,// this must be changed to row for tablet design
                  children: [
                    Text(
                      "About",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                      ),
                    ),

                    SizedBox(height: 9.5,),
                    Text(
                      "Learning Path",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),

        Spacer(),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,// this must be changed to row for tablet design
                  children: [
                  Padding(
                   padding: EdgeInsets.only(right: 10),
                    child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(text:  "© 2022 ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                ),),
                              TextSpan(text:  "Gyan Academy.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                ),),
                              TextSpan(text: "\n          All rights reserved.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                ),

                              ),
                            ],),
                        ),
                  ),

    ]
                    ),
      ],
    )

              ],
            )

        ),

    );
  }
}
