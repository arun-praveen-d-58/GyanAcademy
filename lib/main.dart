import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyan_academy/features/home/screens/mobile_home_screen.dart';
import 'package:gyan_academy/features/learningPath/screens/mobile_learningPath_screen1.dart';
import 'package:hexcolor/hexcolor.dart';

import 'common/custom_button.dart';
import 'constants/global_variables.dart';
import 'features/learningPath/screens/mobile_learningPath_screen2.dart';
import 'features/learningPath/screens/mobile_learningPath_screen3.dart';
import 'package:gyan_academy/router.dart';

void main() {
  runApp( MyApp(),);
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

      builder: (BuildContext context, child) =>

          MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Gyan Academy',
            theme: ThemeData(
              fontFamily: 'Poppins',
              backgroundColor: Colors.white,
              tabBarTheme: TabBarTheme(
                  indicator: UnderlineTabIndicator( // color for indicator (underline)
                      borderSide: BorderSide(
                          color: GlobalVariables.brightBlue))),
              //  primaryColor: Colors.pink[800], // outdated and has no effect to Tabbar
              //   accentColor: Colors.cyan[600] // deprecated,
            ),

            onGenerateRoute: (settings)=> generateRoute(settings),
            home: MobLearningScreen2(),));}}
/*
            home: SafeArea(

            child: DefaultTabController(
              length: 4,


              child: Scaffold(

                backgroundColor: Colors.white,

/*                appBar: AppBar(
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

                                  Navigator.pushNamed(context, MobLearningScreen1.routeName);
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
                */

                /*
        bottom: PreferredSize(
          preferredSize: _tabBar().preferredSize,
          
          child: ColoredBox(
              color: GlobalVariables.brightBlue,
              child: _tabBar()),
        ),
        ),

      ),
      */
/*
        body: TabBarView(
        //  physics: NeverScrollableScrollPhysics(),
          children: [
            MobHomeScreen(),
            MobLearningScreen1(),
            MobLearningScreen2(),
            MobLearningScreen3()
          ],
        ),
*/
//
              //  body: MobHomeScreen(),
               //body: MobLearningScreen1(),
               // body: MobLearningScreen2(),
                body: MobLearningScreen3(),


              ),
            ),
          ),
          ),

      designSize: const Size(360, 640),
    );
  }

 */
/*
  TabBar _tabBar() {
    return TabBar(
            labelPadding: EdgeInsets.zero,
            labelStyle: GoogleFonts.poppins(fontSize:10.5 ,fontWeight: FontWeight.w400,color: Colors.white),
            padding: EdgeInsets.symmetric(horizontal: 5),
            tabs: [
             Tab(text: "Bootcamps",),
              Tab(text:"Learning Path"),
              Tab(text:"Pricing"),
              Tab(text:"About"),
            ],
          );
  }
  */













