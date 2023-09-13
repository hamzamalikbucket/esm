import 'package:esm/Models/my_event/my_event_model.dart';
import 'package:esm/modules/Screens/AdvertScreens/add_adverts_screen.dart';
import 'package:esm/modules/Screens/HostDetails/details_tab_screen.dart';
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

import '../../Models/my_event/accept_request_model.dart';
import '../../Models/my_event/pending_request_model.dart';
import '../../modules/Screens/meeting/audio_meeting_screen.dart';
import '../../modules/Screens/meeting/setting/recording_screen.dart';
import '../../modules/Screens/meeting/setting/security_screen.dart';
import '../../modules/Screens/meeting/setting/tab/tab_screen.dart';
import '../../modules/Screens/meeting/setting/video_sharing_screen.dart';
import '../../modules/Screens/meeting/video_meeting_screen.dart';
import '../../modules/Screens/my_events/accepted_request/accept_request_detail.screen.dart';
import '../../modules/Screens/my_events/my_event/gift_sprayed_screen.dart';
import '../../modules/Screens/my_events/my_event/live_event_screen.dart';
import '../../modules/Screens/my_events/my_event/my_event_detail.screen.dart';
import '../../modules/Screens/my_events/my_event/other_screen.dart';
import '../../modules/Screens/my_events/my_event/participants_screen.dart';
import '../../modules/Screens/my_events/my_event/pre_recorded_event_screen.dart';
import '../../modules/Screens/my_events/my_event/request_screen.dart';
import '../../modules/Screens/my_events/my_event_tab_screen.dart';
import '../../modules/Screens/my_events/pending_request/pending_request_detail.screen.dart';

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
        return MaterialPageRoute(builder: (context) => DetailTab());
      case '/AddAdverts':
        return MaterialPageRoute(builder: (context) => const AddAdverts());
      case '/HologramJoin':
        return MaterialPageRoute(
            builder: (context) => const JoinHologramEngineer());
      case '/ShopScreen':
        return MaterialPageRoute(builder: (context) => const ShopScreen());
      case '/AudioMeetingScreen':
        return MaterialPageRoute(
            builder: (context) => const AudioMeetingScreen());
      case '/VideoMeetingScreen':
        return MaterialPageRoute(
            builder: (context) => const VideoMeetingScreen());
      case '/SecurityScreen':
        return MaterialPageRoute(builder: (context) => const SecurityScreen());
      case '/RecordingScreen':
        return MaterialPageRoute(builder: (context) => const RecordingScreen());
      case '/TabScreen':
        return MaterialPageRoute(builder: (context) => const TabScreen());
      case '/VideoSharingScreen':
        return MaterialPageRoute(
            builder: (context) => const VideoSharingScreen());
      case '/MyEventTabScreen':
        return MaterialPageRoute(builder: (context) => const MyEventTabScreen());
      case '/MyEventDetailScreen':
        var data = routeArguments.arguments;
        if (data is MyEventModel) {
          return MaterialPageRoute(builder: (context) => MyEventDetailScreen(myEventModel: data));
        }
        return MaterialPageRoute(builder: (context) => const MyEventTabScreen());
        case '/AcceptRequestDetailScreen':
        var data = routeArguments.arguments;
        if (data is AcceptRequestModel) {
          return MaterialPageRoute(builder: (context) => AcceptRequestDetailScreen(acceptRequestModel: data));
        }
        return MaterialPageRoute(builder: (context) => const MyEventTabScreen());
        case '/PendingRequestDetailScreen':
        var data = routeArguments.arguments;
        if (data is PendingRequestModel) {
          return MaterialPageRoute(builder: (context) => PendingRequestDetailScreen(pendingRequestModel: data));
        }
        return MaterialPageRoute(builder: (context) => const MyEventTabScreen());
      case '/MyEventOtherScreen':
        var data = routeArguments.arguments;
        if (data is MyEventModel) {
          return MaterialPageRoute(builder: (context) => MyEventOtherScreen(myEventModel: data));
        }
        return MaterialPageRoute(builder: (context) =>  const MyEventTabScreen());
      case '/LiveEventScreen':
        return MaterialPageRoute(builder: (context) => const LiveEventScreen());
      case '/PreRecordedEventScreen':
        return MaterialPageRoute(
            builder: (context) => const PreRecordedEventScreen());
      case '/RequestScreen':
        return MaterialPageRoute(builder: (context) => const RequestScreen());
      case '/ParticipantsScreen':
        return MaterialPageRoute(builder: (context) => const ParticipantsScreen());
        case '/GiftSpyaredScreen':
        return MaterialPageRoute(builder: (context) => const GiftSpyaredScreen());

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
