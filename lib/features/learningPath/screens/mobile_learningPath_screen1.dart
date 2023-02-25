import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gyan_academy/common/custom_courseTitle.dart';
import 'package:gyan_academy/common/custom_mob_footer.dart';
import 'package:gyan_academy/common/custom_searchBar.dart';
import 'package:gyan_academy/common/custom_topicTitle.dart';
import 'package:gyan_academy/constants/global_variables.dart';
import 'package:gyan_academy/features/home/screens/mobile_home_screen.dart';
import 'package:gyan_academy/main.dart';
import 'package:hexcolor/hexcolor.dart';
class MobLearningScreen1 extends StatefulWidget {
  static const String routeName = '/learningPath1-screen';
  const MobLearningScreen1({Key? key}) : super(key: key);

  @override
  State<MobLearningScreen1> createState() => _MobLearningScreen1State();


}

class _MobLearningScreen1State extends State<MobLearningScreen1> with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3,initialIndex: 0); // myTabs.length change it with number of tabs you have
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   // List<CustomTopicCard>;
    const numItems = 5;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
         backgroundColor: HexColor("#E4D7FF"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(

            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                child:  Image.asset('assets/learningPath/learning_path1.png',

                ),

              ),
              Text("Course Library",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: Colors.white,
                ),
              )
              ],
              ),
            //create tabs here
            ]
            ),
    ),

            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      SizedBox(height: 15,),
                      GestureDetector(
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_new_outlined,size: 10,),
                            SizedBox(width: 5.5,),
                            Text("Back to Home",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),)

    ],
                            ),
    ),
        SizedBox(height: 14,),
        CustomSearchBar(controller: searchController, height: 35),
  SizedBox(height: 13.5,),




                    Container(
                      child: TabBar(
                        labelColor: GlobalVariables.magenta,
                      //  indicatorColor: GlobalVariables.magenta,
                        indicator: UnderlineTabIndicator(
    borderSide: BorderSide(color: GlobalVariables.magenta, width: 3.0, ),


    ) ,
                        unselectedLabelColor: Colors.black,
           controller: _tabController,
                        labelStyle: TextStyle(fontWeight: FontWeight.w500,fontFamily: "Poppins",fontSize: 9.7),
                        tabs: [
                          Tab(text: "Most Popular",),
                          Tab(text: "Highly Rate"),
                          Tab(text: "New"),

                        ],
                      ),
                    ),
    ])
    ),
            ),


/*
                  Container(
                     //height of TabBarView
                    height: 600,
                      decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                      ),
                      child: TabBarView(
                        controller: _tabController,
                          children: [
                         Container(
                            child: Center(
                    child: ListView.builder(
                      itemCount: list.length+1,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              if (list.length == index) {
                                return;
                              }
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PlotDetail(list[index])));
                            },
                            child: list.length != index?PlotListItemWidget(list[index]):SizedBox(height: 100,));
                      },
                    ),
*/

                           //   child: Text('Display Tab 1', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        Container(
                          height:  405.h,
                          child: TabBarView(
                               controller: _tabController,
                                  children: [
                                    SafeArea(
                                      child: Center(
                                        //child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                       child: ListView.builder(
                                         itemCount: numItems,
                                           itemBuilder: (BuildContext context,int i){
                                             if(i== (numItems)-1)
                                               return Padding(
                                                   padding: EdgeInsets.only(top: 20),
                                                   child: CustomMobFooter()
                                               );

                                             final index = i~/2+1;
                                             return _build(index);
                                           }

                                       ),
                                      ),
                                    ),

                          Container(
                              child: Center(
                                child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                              ),
                          ),
                          Container(
                              child: Center(
                                child: Text('Display Tab 3', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                              ),
                          ),

    ]),
                        ),



          ],

        ),

//CustomMobFooter()

      ),
    );
  }
}
Widget _build(int idx){
  return Padding(
    padding: const EdgeInsets.only(top: 20,right: 16,left: 16),
    child:CustomTitleCard(url: "assets/learningPath/js_bg.png",
        title: "JavaScript",
        subTitle: "Find out how far you can go with your JavaScript abilities!",
        color: GlobalVariables.magenta
    ),
  );
}