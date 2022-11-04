import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyan_academy/constants/global_variables.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(

        child: Column(
        children: [
           // SvgPicture.asset("assets/homeScreen/asset_image.svg",width: double.infinity,height: 223,)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/homeScreen/asset_image.png",
                width:  360,
                height: 223,
              ),
            ],
          ),
          SizedBox(height: 31,),
          Text("Advance Your\n\Skills",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,fontSize: 22,),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 31,),
          Text("Develop critical tech skills. Cut cycle times. Build\n\happier, healthier tech teams. And transform\n\your goals into gains. ",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,fontSize: 12,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              /*
                Know more on tap

               */

            },
              child: Text("Know More",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13.5,
                  color: Colors.white,fontWeight: FontWeight.w700
              )),),style:ElevatedButton.styleFrom(
                  minimumSize: Size(106,37),primary: GlobalVariables.brightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  )

              ),

            ),
          /*

                 Card(
                     color: GlobalVariables.brightBlue,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.only(
                         topLeft:    Radius.circular(30),
                         topRight:    Radius.circular(30),
                         bottomLeft:     Radius.circular(30),
                         bottomRight:     Radius.circular(30)


                       )
                     ),
                     child: SizedBox(
                      height: 100.0,
                     ),
                   ),
           */
          SizedBox(height: 28,),
              Column(
              children: [
                Container(
                  height: 183,
                  width: 303,
                 // color: Colors.pink,
                 // padding: EdgeInsets.all(0),
                child: Card(
                  elevation: 5,
                  shadowColor: GlobalVariables.brightBlue,
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25))
          ),
                  color: GlobalVariables.brightBlue,
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 17,right: 10,top: 21),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 26.5,
                                height: 22.5,
                                child:SvgPicture.asset("assets/homeScreen/bootcamp_vector.svg",height: 15.h,width: 15.w,) ,
                              ),

                          const SizedBox(
                            width: 10,
                          ), //SizedBox
                          Text(
                            'BootCamps',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 17,
                                color: Colors.white,fontWeight: FontWeight.w500))
                          ),
                            ],
                          ),//Text
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          Expanded(
                            child: Text(
                              "Escalate your career with our bootcamps, designed to build depth of knowledge and ability in the most in-demand tech skills.",
                              style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12,
                                color: Colors.white,fontWeight: FontWeight.w400))),
                          ),//Text
                          SizedBox(
                            height: 10,
                          ), //SizedBox
                          SizedBox(


                            child: GestureDetector(
                              onTap: (){},
                              child: Text("Read More",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12,
                                  color: Colors.white,fontWeight: FontWeight.w600))),
                            )
                          ) //SizedBox
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ), //Card
                ),
              ],
            )
         ]

          )
          ),




    );


  }
}
