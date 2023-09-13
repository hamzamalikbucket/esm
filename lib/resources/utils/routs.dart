import 'package:esm/modules/Screens/AdvertScreens/add_adverts_screen.dart';
import 'package:esm/modules/Screens/EventsByLocationScreens/find_event_by_location_screen.dart';
import 'package:esm/modules/Screens/HostDetails/details_tab_screen.dart';
import 'package:esm/modules/Screens/SellerServices/add_services_screen.dart';
import 'package:esm/modules/Screens/SellerServices/service_main_screen.dart';
import 'package:esm/modules/Screens/join_hologram_screen.dart';
import 'package:esm/modules/Screens/ShoppingScreens/shop_screen.dart';
import 'package:esm/modules/Screens/auth/login_screen.dart';
import 'package:esm/modules/Screens/auth/otp_screen.dart';
import 'package:esm/modules/Screens/auth/register_screen.dart';
import 'package:esm/modules/Screens/dashboard/bottom_nav_bar.dart';
import 'package:esm/modules/Screens/dashboard/home/about_us_screen.dart';
import 'package:esm/modules/Screens/dashboard/home/contact_us_screen.dart';
import 'package:esm/modules/Screens/meeting/quick_meeting_screen.dart';
import 'package:esm/modules/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings routeArguments) {
    switch (routeArguments.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case '/LoginScreen':
        return MaterialPageRoute(builder: (context) => const LoginScreen());

      case '/RegisterScreen':
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case '/OtpScreen':
        return MaterialPageRoute(builder: (context) => const OtpScreen());
      case '/BottomNavigationBarScreen':
        return MaterialPageRoute(
            builder: (context) => const BottomNavigationBarScreen());
      case '/AboutUsScreen':
        return MaterialPageRoute(builder: (context) => const AboutUsScreen());
      case '/ContactUsScreen':
        return MaterialPageRoute(builder: (context) => const ContactUsScreen());
      case '/QuickMeetingScreen':
        return MaterialPageRoute(
            builder: (context) => const QuickMeetingScreen());
      case '/HostDetailTabScreen':
        return MaterialPageRoute(
            builder: (context) => DetailTab());
      case '/AddAdverts':
        return MaterialPageRoute(
            builder: (context) => AddAdverts());
      case '/HologramJoin':
        return MaterialPageRoute(
            builder: (context) => JoinHologramEngineer());
      case '/ShopScreen':
        return MaterialPageRoute(
            builder: (context) => ShopScreen());
      case '/EventByLocationScreen':
        return MaterialPageRoute(
            builder: (context) => EventByLocationScreen());
      case '/ServiceScreen':
        return MaterialPageRoute(
            builder: (context) => ServiceMainScreen());
      case '/AddServiceScreen':
        return MaterialPageRoute(
            builder: (context) => AddServiceScreen());
      // case '/Profile':
      //   return MaterialPageRoute(builder: (context) => const Profile());
      // case '/EditProfile':
      //   var data = routeArguments.arguments;
      //   if (data is ParentDataModel) {
      //     return MaterialPageRoute(
      //         builder: (context) => EditProfile(parentDataModel: data));
      //   }
      //   return MaterialPageRoute(builder: (context) => const Profile());
      default:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
    }
  }
}
