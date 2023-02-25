import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../common/custom_mob_footer.dart';
import '../../../constants/global_variables.dart';

class MobLearningScreen3 extends StatefulWidget {
  static const String routeName = '/learningPath3-screen';

  const MobLearningScreen3({Key? key}) : super(key: key);

  @override
  State<MobLearningScreen3> createState() => _MobLearningScreen3State();
}

class _MobLearningScreen3State extends State<MobLearningScreen3> {

  @override
  Widget build(BuildContext context) {
    const numItems = 4;
     return Scaffold(
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

                       Navigator.pushNamed(context, MobLearningScreen3.routeName);
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
                          child:  Image.asset('assets/learningPath/learning_path3.png',

                          ),

                        ),
                        SizedBox(
                          width: 250,
                          child: Text("Learn Merge Sort in JavaScript",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              color: Colors.white,
                            ),

                          ),
                        )
                      ],
                    ),

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
                              Text("Back to JavaScript",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                ),)

                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
          ],

        ),

//CustomMobFooter()
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 15,bottom: 27),
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          SizedBox(
                            //width: 240.w,
                            child: Text("Learn Merge Sort in JavaScript",
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage("https://vmrw8k5h.tinifycdn.com/news/wp-content/uploads/2021/09/Adam-Peaty-CUPRA-Queens-Leisure-Centre-Derby-2-1536x1024.jpg",
                            ),
                            radius: 10,
                          ),
                          //  SvgPicture.asset("assets/learningPath/star.svg",height: 11,width: 11,),
                          SizedBox(width: 7,),
                          Text("Sophie Delgado",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 12,),
                          SvgPicture.asset("assets/learningPath/star.svg",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("4.7",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Text("Learn the basics of JavaScript by solving 140+ interactive coding challenges and building three fun projects.",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          height: 2.1
                        ),
                      ),


                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Tile(),

       ]
              ),
            ),
         SizedBox(height: 20,),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("You’ll learn",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      fontSize: 16,
                      color: Colors.black
                    ),
                    ),
                    SizedBox(height: 19,),
                    Wrap(
                      spacing: 6.0,
                      runSpacing: 14.0,
                      children: [
                        'arrays',
                        'const & let',
                        'template strings',
                        'conditional statements',
                        'debugging with Google'
                      ].map((String name)=> Chip(
                          label: TextButton( onPressed: () {  },
                          child:Text(name,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            color: Colors.black
                          ),

                          ) ,),
                      )
                      ).toList()
                    ),

                  ],
                ),
              ),
            ),
            CustomMobFooter()


       ],
      ),
      ),
    );
  }
}
/*
Widget _build(int idx){
  return Padding(
    padding: const EdgeInsets.only(top: 20,right: 16,left: 16),
    child: Text("Hi"),
  );
}
*/

class Tile extends StatelessWidget {
  const Tile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
      itemCount: data.length,

    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  const Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

// Data to display.
const List<Entry> data = <Entry>[
  Entry(
    'Build a passenger counter app',
    <Entry>[
      Entry('1. Objects and functions'),
      Entry('2. if else'),
      Entry('3. Loops and arrays'),
      Entry('4. push,pop,unshift,shift challenge'),
      Entry('5. Logical operators'),
      Entry('6. Solo Project-Password Generator'),
    ],
  ),
  Entry(
    'Build a passenger counter app',
    <Entry>[
      Entry('1. Objects and functions'),
      Entry('2. if else'),
      Entry('3. Loops and arrays'),
      Entry('4. push,pop,unshift,shift challenge'),
      Entry('5. Logical operators'),
      Entry('6. Solo Project-Password Generator'),
    ],
  ),
  Entry(
    'Setting up a dev environment',
    <Entry>[
      Entry('1. Objects and functions'),
      Entry('2. if else'),
      Entry('3. Loops and arrays'),
      Entry('4. push,pop,unshift,shift challenge'),
      Entry('5. Logical operators'),
      Entry('6. Solo Project-Password Generator'),
    ],
  ),
  Entry(
    'Build a blackjack game',
    <Entry>[
      Entry('1. Objects and functions'),
      Entry('2. if else'),
      Entry('3. Loops and arrays'),
      Entry('4. push,pop,unshift,shift challenge'),
      Entry('5. Logical operators'),
      Entry('6. Solo Project-Password Generator'),
    ],
  ),
  Entry(
    'Pratice time-part 1',
    <Entry>[
      Entry('1. Objects and functions'),
      Entry('2. if else'),
      Entry('3. Loops and arrays'),
      Entry('4. push,pop,unshift,shift challenge'),
      Entry('5. Logical operators'),
      Entry('6. Solo Project-Password Generator'),
    ],
  ),
  Entry(
    'Build a Chrome extension',
    <Entry>[
      Entry('1. Objects and functions'),
      Entry('2. if else'),
      Entry('3. Loops and arrays'),
      Entry('4. push,pop,unshift,shift challenge'),
      Entry('5. Logical operators'),
      Entry('6. Solo Project-Password Generator'),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return Container(

        child: Column(
          children: [
            SizedBox(height:5,child: Divider(color: Colors.black,)),
            ListTile(
                leading: Icon(Icons.play_circle_outline_outlined),
                title: Text(root.title,
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
            )),

          ],
        ));
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: HexColor("#18191F"),
            width: 1.5
            ),
                borderRadius: BorderRadius.circular(10),

        ),
        child: ExpansionTile(

          controlAffinity: ListTileControlAffinity.leading,
          key: PageStorageKey<Entry>(root),
          title: Text(root.title,
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Colors.black
            ),

          ),
          children: root.children.map(_buildTiles).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}