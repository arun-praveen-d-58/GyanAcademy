import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gyan_academy/common/custom_button.dart';
import 'package:gyan_academy/common/custom_courseTitle.dart';
import 'package:gyan_academy/common/custom_mob_footer.dart';
import 'package:gyan_academy/common/custom_searchBar.dart';
import 'package:gyan_academy/common/custom_topicTitle.dart';
import 'package:gyan_academy/constants/global_variables.dart';
import 'package:gyan_academy/main.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../common/custom_outlineButton.dart';
class MobLearningScreen2 extends StatefulWidget {
  static const String routeName = '/learningPath2-screen';
  const MobLearningScreen2({Key? key}) : super(key: key);

  @override
  State<MobLearningScreen2> createState() => _MobLearningScreen2State();


}

class _MobLearningScreen2State extends State<MobLearningScreen2> with TickerProviderStateMixin {
  static const String routeName = '/learningPath2-screen';
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

    const numItems = 5;

    return Scaffold(
      backgroundColor: HexColor("#E4D7FF"),
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

                      Navigator.pushNamed(context, MobLearningScreen2.routeName);
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
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
                            child:  Image.asset('assets/learningPath/learning_path2.png',

                            ),

                          ),
                          Text("JavaScript",
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
                                Text("Back to Course library",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  ),)

                              ],
                            ),
                            onTap: (){
                              /*

                              back to home on tap


                              */
                            },
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
                           // physics: NeverScrollableScrollPhysics(),
                              itemCount: numItems,
                              itemBuilder: (BuildContext context,int i){
                                if(numItems>=1 && i== (numItems)-1)
                                  return Padding(
                                    padding: EdgeInsets.only(top: 20),
                                      child: CustomMobFooter()
                                  );
                                if(numItems>1 && i == (numItems)-2)
                                  return  Padding( padding: EdgeInsets.only(top: 20,left: 16,right: 16),
                                child: CustomCard()
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
      ),
    );
  }
}
Widget _build(int idx){
  return Padding(
    padding: const EdgeInsets.only(top: 20,right: 16,left: 16),
    child: CustomTopicCard(url: "assets/learningPath/topic_img.png",
        title: "A Learn Merge Sort in JavaScript",
        color: GlobalVariables.magenta,
        profileUrl: "https://vmrw8k5h.tinifycdn.com/news/wp-content/uploads/2021/09/Adam-Peaty-CUPRA-Queens-Leisure-Centre-Derby-2-1536x1024.jpg",
        userName: "Sophie Delgado",
        lessons: 32,
        captions: "Find out how far you can go with your JavaScript abilities!Find out how far you can go with your JavaScript abilities!",
        duration: "3h 20m",
        rating: 4.7,
        level: "Beginner"
    ),
  );
}

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 5,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 328,
              decoration: BoxDecoration(
                color: Colors.white,
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 13),
                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                        children: [
                          Text(
                            "Try for free",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700,
                            ),),
                        ]),
                    SizedBox(height: 20,),
                    Text(
                      "Get this learning path plus top-rated picks in tech skills and other popular topics.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 15,),

                    //  SvgPicture.asset("assets/learningPath/star.svg",height: 11,width: 11,),

                    CustomButton(text: "Get Started", onTap: (){
                      /*

                                           get started on tap
                                           */

                    }
                    ),


                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
