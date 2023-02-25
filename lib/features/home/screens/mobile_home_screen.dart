import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyan_academy/common/custom_button.dart';
import 'package:gyan_academy/common/custom_mob_footer.dart';
import 'package:gyan_academy/constants/global_variables.dart';
import 'package:gyan_academy/features/learningPath/screens/mobile_learningPath_screen1.dart';
import 'package:hexcolor/hexcolor.dart';

class MobHomeScreen extends StatefulWidget {
  static const String routeName = '/home-screen';
  const MobHomeScreen({Key? key}) : super(key: key);

  @override
  State<MobHomeScreen> createState() => _MobHomeScreenState();
}

class _MobHomeScreenState extends State<MobHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 9.w, right: 9.w, top: 10, bottom: 10),
              child: Row(

                children: [
                  SizedBox(
                      height: 15.5,
                      width: 20.5,
                      child: SvgPicture.asset(
                        "assets/homeScreen/logo.svg",
                      )

                  ),
                  SizedBox(width: 6,),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Gyan ', style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: GlobalVariables.magenta
                        )),
                        TextSpan(text: 'Academy', style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: GlobalVariables.brightBlue
                        ),

                        ),
                      ],),
                  ),


                  Spacer(),

                  GestureDetector(
                    onTap: () {

                      Navigator.pushNamed(context, MobHomeScreen.routeName);
                    },
                    child: SizedBox(

                        child:Text("Bootcamps",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            color: Colors.black,
                          ),
                        )

                    ),
                  ),
                  SizedBox(width: 10,),
                  /*
                             Expanded(
                               flex: 3,
                               child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {

                                      /*
                know more on tap

                 */


                                    },
                                    child: new Text('Contact Us', style:TextStyle(fontSize: 9,
                                        fontFamily: "Poppins",
                                        color: Colors.white,fontWeight: FontWeight.w700

                                    ),

                                    ),
                                    style:ElevatedButton.styleFrom(
                                      primary:HexColor("#282B85"),
                                      elevation: 1,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ),
                                ),
                             ),

                              */
                  Container(
                      height: 30,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: HexColor("#282B85"),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: TextButton(
                          onPressed: (){
                            /*

                                     Contact us on tap

                                      */



                          },  child: new Text('Contact Us', style:TextStyle(fontSize: 9,
                            fontFamily: "Poppins",
                            color: Colors.white,fontWeight: FontWeight.w700

                        ),

                        ),
                        ),
                      )



                  ),

                ],
              ),
            ),

          ],
        ),
      ),
          body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                //fit: FlexFit.loose,
                child: Image.asset("assets/homeScreen/asset_image.png",
                    width:  360,
                    height: 223,
                  ),
              ),

            ],
          ),
          SizedBox(height: 31,),
          Text("Advance Your\n\Skills",
          
            style: TextStyle(
              fontWeight: FontWeight.w700,fontSize: 22,fontFamily: "poppins"

            ),
            textAlign: TextAlign.center,

          ),
          SizedBox(height: 31,),
          Text("Develop critical tech skills. Cut cycle times. Build\n\happier, healthier tech teams. And transform\n\your goals into gains. ",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,fontSize: 12,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 28,),

          Container(
            height: 40,
            width: 106.5,
            decoration: new BoxDecoration(
             borderRadius: BorderRadius.circular(5),
            ),
            child: ElevatedButton(
              onPressed: () {

                /*
                know more on tap

                 */
                Navigator.pushNamed(context, MobLearningScreen1.routeName);

              },
              child: new Text('Know More', style:TextStyle(fontSize: 12,
                  fontFamily: "Poppins",
                  color: Colors.white,fontWeight: FontWeight.w700

              ),

              ),
              style:ElevatedButton.styleFrom(
               primary:HexColor("#282B85"),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
            ),
            ),
          ),

          SizedBox(height: 28,),
          Container(
            width: double.infinity,
            height: 695,
            decoration: BoxDecoration(
              gradient: GlobalVariables.mix
            ),

            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  /*Card 1*/


                  Column(
                    children: [
                      Card(
                        elevation: 5,
                        shadowColor: GlobalVariables.brightBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(28))
                        ),
                        child: Container(
                          height: 175,
                          width: 303,
                          decoration: BoxDecoration(
                            gradient: GlobalVariables.mix,
                            borderRadius: BorderRadius.circular(25)

                          ),
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 24,right: 20,top: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: SizedBox(
                                  width: 26.5,
                                  height: 22.5,
                                  child:SvgPicture.asset("assets/homeScreen/bootcamp_vector.svg",height: 15,width: 15,) ,
                                ),
                              ),

                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: //SizedBox
                              Text(
                                  'BootCamps',style:TextStyle(fontSize: 17,
                                  fontFamily: "Poppins",
                                  color: Colors.white,fontWeight: FontWeight.w500))

                              ),
                            ],
                          ),//Text
                          const SizedBox(
                            height: 13,
                          ), //SizedBox
                          Expanded(
                            child: SizedBox(
                              width: 600,
                              child: SingleChildScrollView(
                                child: Text(
                                    "Escalate your career with our bootcamps,\n\designed to build depth of knowledge and\n\ability in the most in-demand tech skills.",
                                    style: TextStyle(fontSize: 12,
                                        fontFamily: "Poppins",
                                        color: Colors.white,fontWeight: FontWeight.w400,height: 1.6))),
                            ),
                          ),//Text
                          SizedBox(
                            height: 10,
                          ), //SizedBox
                          SizedBox(
                              child: GestureDetector(
                                onTap: (){
                                  /*

                                  Bootcamp read more on tap

                                   */
                                },
                                child: Text("Read More",style: TextStyle(fontSize: 12,
                                    fontFamily: "Poppins",
                                    color: Colors.white,fontWeight: FontWeight.w600))),

                          ) //SizedBox
                        ],
                    ),
                  ), //Padding
                ),
    ),

                      )
                    ],
                  ),




         SizedBox(height: 22,),


                  /* card 2 */

                  Column(
                    children: [
                      Card(
                        elevation: 5,
                        shadowColor: GlobalVariables.brightBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(28))
                        ),
                        child: Container(
                          height: 175,
                          width: 303,
                          decoration: BoxDecoration(
                              gradient: GlobalVariables.mix,
                              borderRadius: BorderRadius.circular(25)

                          ),
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,bottom: 24,right: 20,top: 23),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Flexible(
                                        child: SizedBox(
                                          width: 26.5,
                                          height: 22.5,
                                          child:SvgPicture.asset("assets/homeScreen/webinar_vector.svg",height: 15,width: 15,) ,
                                        ),
                                      ),

                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: //SizedBox
                                        Text(
                                            'Webinars',style: TextStyle(fontSize: 17,
                                            fontFamily: "Poppins",
                                            color: Colors.white,fontWeight: FontWeight.w500))
                                      ),
                                    ],
                                  ),//Text
                                  const SizedBox(
                                    height: 13,
                                  ), //SizedBox
                                  Expanded(
                                    child: SizedBox(
                                      width: 600,
                                      child: SingleChildScrollView(
                                        child: Text(
                                            "Escalate your career with our bootcamps,\n\designed to build depth of knowledge and\n\ability in the most in-demand tech skills.",
                                            style: TextStyle(fontSize: 12,
                                                fontFamily: "Poppins",
                                                color: Colors.white,fontWeight: FontWeight.w400,height: 1.6))),
                                      ),
                                  ),//Text
                                  SizedBox(
                                    height: 10,
                                  ), //SizedBox
                                  SizedBox(
                                      child: GestureDetector(
                                        onTap: (){
                                          /*

                                          Webinar read more on- tap


                                           */

                                        },
                                        child: Text("Read More",style: TextStyle(fontSize: 12,
                                            fontFamily: "Poppins",
                                            color: Colors.white,fontWeight: FontWeight.w600))),
                                  ),
                                ],
                              ),
                            ), //Padding
                          ),
                        ),

                      )
                    ],
                  ),

                  SizedBox(height: 22,),

                  /* card 3 */

                  Column(
                    children: [
                      Card(
                        elevation: 5,
                        shadowColor: GlobalVariables.brightBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(28))
                        ),
                        child: Container(
                          height: 175,
                          width: 303,
                          decoration: BoxDecoration(
                              gradient: GlobalVariables.mix,
                              borderRadius: BorderRadius.circular(25)

                          ),
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,bottom: 24,right: 20,top: 23),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Flexible(
                                        child: SizedBox(
                                          width: 26.5,
                                          height: 22.5,
                                          child:SvgPicture.asset("assets/homeScreen/women_vector.svg",height: 15,width: 15,) ,
                                        ),
                                      ),

                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                          "Women in Tech",style: TextStyle(fontSize: 17,
                                              fontFamily: "Poppins",
                                          color: Colors.white,fontWeight: FontWeight.w500)),
                                    ],
                                  ),//Text
                                  const SizedBox(
                                    height: 13,
                                  ), //SizedBox
                                  Expanded(
                                    child: SizedBox(
                                      width: 600,
                                      child: SingleChildScrollView(
                                        child: Text(
                                            "Escalate your career with our bootcamps,\n\designed to build depth of knowledge and\n\ability in the most in-demand tech skills.",
                                            style: TextStyle(fontSize: 12,
                                                fontFamily: "Poppins",
                                                color: Colors.white,fontWeight: FontWeight.w400,height: 1.6))),
                                      ),
                                  ),

                                  //Text
                                  SizedBox(
                                    height: 10,
                                  ), //SizedBox
                                  SizedBox(
                                      child: GestureDetector(
                                        onTap: (){

                                          /*

                                          women in tech   read more on-tap


                                           */

                                        },
                                        child: Text("Read More",style: TextStyle(fontSize: 12,
                                            fontFamily: "Poppins",
                                            color: Colors.white,fontWeight: FontWeight.w600))),

                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                      )
                    ],
                  ),




],

          ),
            )
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset('assets/homeScreen/Hands using laptop side 1.png',),
          ),
          SizedBox(height: 36,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.5),
                child: SizedBox(
                  width: 329,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                Text(
                  "How it works",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 31),

                      Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 17.5),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Enim id nisi accumsan convallis. Cursus pharetra\n\dictum enim, adipiscing pellentesque morbi sapien\n\quis auctor. Ultrices nisl bibendum euismod nisl\n\semper malesuada quis venenatis. Faucibus\n\sodales.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                              height: 1.6
                          ),
                        ),
                      ),
                    SizedBox(height: 21.5,),
                  Text(
                    "Get access",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 17.5),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Eget massa sem gravida tellus dolor, tortor eu\n\ante. Diam odio fermentum netus id eget. Sed\n\diam massa nisl faucibus arcu vulputate ut\nvenenatis. Elementum.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                          height: 1.6
                      ),
                    ),
                  ),

                      SizedBox(height: 29,),
                      Image.asset('assets/homeScreen/Business Charts and Diagrams on Digital Tablet 1.png',),
                      SizedBox(height: 22,),
                      Text(
                        "Learn course",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 17.5),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Orci, lobortis elit dui aliquam nisl nunc. Leo suspendisse\nvitae, vitae sed sagittis morbi enim. Sapien facilisis faucibus\n\est augue pellentesque nisl. ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                              height: 1.6
                          ),
                        ),
                      ),


                      SizedBox(height: 33,),
                      Text("Get result",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 17.5),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Dolor ut facilisis molestie sagittis et ultrices. In consequat\ndignissim volutpat pellentesque magna semper vehicula\nvitae magna. Vulputate fermentum.",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w300,
                              height: 1.6
                          ),
                        ),
                      ),


                      SizedBox(height: 65,),
                      CustomButton(text: "Start now", onTap: (){
                       /*


                       start now on tap




                        */

                      }),
                      SizedBox(height: 21.5,),
                      CustomButton(text: "Start Free Trial", onTap: (){
                        /*




                        start free trial on tap
                         */
                      }),
                      SizedBox(height: 20.5,),


                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Reviews",

                            style: TextStyle(
                                fontWeight: FontWeight.w700,fontSize: 18,fontFamily: "poppins"

                            ),
                            textAlign: TextAlign.center,

                          ),

                      SizedBox(height: 21,),

                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Divider(
                              height: 1,
                              indent: 10,
                              endIndent: 10,
                              thickness: 1,
                              color: HexColor("#EBEAED"),
                            ),
                          ),
                      SizedBox(height: 19.75,),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 238,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(17, 0, 17, 0),
                                          child: Container(
                                            width: 60,
                                            height: 60,
                                           clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              'https://picsum.photos/seed/643/600',
                                            ),
                                          ),
                                        ),

                                        SizedBox(
                                          width:100,
                                          child: Text("Jessey Kirk, designmodo",
                                            style: TextStyle(
                                              color: HexColor("#66151439"),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Poppins",
                                              height: 1.6,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 28,),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/homeScreen/quotation.png',
                                          width: 47,
                                          height: 40,
                                        ),
                                        SizedBox(width: 10,),
                                        Expanded(
                                          child: Text("The most important part of the Startup Framework is the samples. The samples form a set of 25 usable pages you can use as is or you can add new blocks from UI Kit. ",
                                            style: TextStyle(
                                                 color: HexColor("#1E0E62"),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              fontFamily: "Poppins",
                                                height:1.6,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 40.5,),
                                  ],
                                ),
                              ),


                            ],
                          ),

                        ],
              ),


                            ],
                          ),
              ),
    ),
                        ],
                      ),
          Container(
            width: double.infinity,
            height:735,
            color: HexColor("#F3FBFF"),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                SizedBox(height: 27.25,),
                Text(
                    "Our Values",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: HexColor("#1E0E62"),
                      fontSize: 22,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
              SizedBox(height: 66.1,),
                Text(
                  "Seek to learn",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff9d1c7f),
                    fontSize: 18,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  child: Text(
                    "Startup Framework contains\ncomponents and complex\nblocks which can easily be\nintegrated into almost any\ndesign. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0x66151438),
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                SizedBox(height: 50),

                SizedBox(
                  child:Text(
                    "Paid internship",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff9d1c7f),
                      fontSize: 18,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  child:Text(
                    "We haven’t forgotten about\nresponsive layout. With Startup\nFramework, you can create a\nwebsite with full mobile support.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0x66151438),
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),


                SizedBox(height: 50),
                SizedBox(
                  child:Text(
                    "Commit to our future",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff9d1c7f),
                      fontSize: 18,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  child: Text(
                    "Startup Framework works on\ndevices supporting Retina\nDisplay. Feel the clarity in each\npixel.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0x66151438),
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomMobFooter(),

            ],
          ),
          ),

    );


  }

}
