import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyan_academy/features/home/screens/mobile_home_screen.dart';
import 'package:gyan_academy/features/learningPath/screens/mobile_learningPath_screen1.dart';

import 'constants/global_variables.dart';
import 'features/learningPath/screens/mobile_learningPath_screen2.dart';
import 'features/learningPath/screens/mobile_learningPath_screen3.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context,child)=> MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Gyan Academy',
          theme: ThemeData(
            fontFamily: 'Poppins',
             backgroundColor: Colors.white,
              tabBarTheme: TabBarTheme(
                  indicator: UnderlineTabIndicator( // color for indicator (underline)
                      borderSide: BorderSide(color: GlobalVariables.brightBlue))),
            //  primaryColor: Colors.pink[800], // outdated and has no effect to Tabbar
           //   accentColor: Colors.cyan[600] // deprecated,
              ),

         // onGenerateRoute: (settings)=> generateRoute(settings),
          home: SafeArea(
            child: DefaultTabController(
              length: 4,
              child: Scaffold(
                backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 9.w,right: 9.w,top: 10,bottom: 10),
              child: Row(

                children: [
                  SizedBox(
                      height: 18,
                      width: 24,
                      child:  SvgPicture.asset("assets/homeScreen/logo.svg",
                      )

                  ),
                  SizedBox(width: 6,),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Gyan ',style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 13,fontWeight: FontWeight.w700,color: GlobalVariables.magenta
                        )),
                        TextSpan(text: 'Academy', style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 13,fontWeight: FontWeight.w700,color: GlobalVariables.brightBlue
                        ),

                        ),
                      ],),
                  ),



                  Spacer(),


                  GestureDetector(
                    onTap: (){


                    },
                    child: GestureDetector(
                      onTap: (){
                        /*
                        account button on-tap


                         */

                      },
                      child: SizedBox(
                          height: 20,
                          width: 20,
                          child:  SvgPicture.asset("assets/homeScreen/profile.svg",
                          )

                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
        bottom: PreferredSize(
          preferredSize: _tabBar().preferredSize,
          
          child: ColoredBox(
              color: GlobalVariables.brightBlue,
              child: _tabBar()),
        ),
        ),

        body: TabBarView(
          children: [
            MobHomeScreen(),
            MobLearningScreen1(),
            MobLearningScreen2(),
            MobLearningScreen3()
          ],
        ),
        ),




          
      ),
    ),
    ),

      designSize: const Size(360, 640),
    );
  }

  TabBar _tabBar() {
    return TabBar(
            labelPadding: EdgeInsets.zero,
            labelStyle: GoogleFonts.poppins(fontSize:10.sp ,fontWeight: FontWeight.w400,color: Colors.white),
            padding: EdgeInsets.symmetric(horizontal: 5),
            tabs: [
             Tab(text: "Bootcamps",),
              Tab(text:"Learning Path"),
              Tab(text:"Pricing"),
              Tab(text:"About"),
            ],
          );
  }
}
