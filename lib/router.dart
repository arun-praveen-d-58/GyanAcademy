
import 'package:flutter/material.dart';
import 'package:gyan_academy/features/gallery/screens/gallery_screen.dart';
import 'package:gyan_academy/features/home/screens/mobile_home_screen.dart';
import 'package:gyan_academy/features/learningPath/screens/mobile_learningPath_screen1.dart';

import 'features/learningPath/screens/mobile_learningPath_screen2.dart';
import 'features/learningPath/screens/mobile_learningPath_screen3.dart';


Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    case MobHomeScreen.routeName:
        return MaterialPageRoute(settings: routeSettings,
         builder: (context)=> const MobHomeScreen(),);

    case MobLearningScreen1.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (context)=> const MobLearningScreen1(),);

    case MobLearningScreen2.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (context)=> const MobLearningScreen2(),);

    case MobLearningScreen3.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (context)=> const MobLearningScreen3(),);
    case GalleryScreen.routeName:
      return MaterialPageRoute(settings: routeSettings,
        builder: (context)=> const GalleryScreen());

    default:
      return MaterialPageRoute(settings: routeSettings,
        builder: (context)=> const Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        ),);
  }
}

