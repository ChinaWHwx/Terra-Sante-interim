import 'package:flutter_application_1/modules/app/auth/SignIn/ForgetPassword/forget.controller.dart';
import 'package:flutter_application_1/modules/app/auth/SignIn/signin.controller.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Email/email.controller.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/EmailVerification/emailverification.controller.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Infos/info.controller.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Password/password.controller.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Position/google_place_api.controller.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/SmsVerification/smsverification.controller.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Telephone/telephone.controller.dart';
import 'package:flutter_application_1/modules/app/auth/Splash/splach.controller.dart';
import 'package:flutter_application_1/modules/app/auth/auth.controller.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Status/Candidate/candidate.controller.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Status/Recruiter/recruiter.controller.dart';
import 'package:flutter_application_1/modules/app/error/SignIn/signin_error.controller.dart';
import 'package:flutter_application_1/modules/app/error/SmsVerification/sms_error.controller.dart';
import 'package:flutter_application_1/modules/app/homepage/Calendar/calendar.controller.dart';
import 'package:flutter_application_1/modules/app/homepage/Drawer/Contact/contact.controller.dart';
import 'package:flutter_application_1/modules/app/homepage/Drawer/GoogleMap/google_map.controller.dart';
import 'package:flutter_application_1/modules/app/homepage/Drawer/Recommend/recommend.controller.dart';
import 'package:flutter_application_1/modules/app/homepage/Duty/duty.controller.dart';
import 'package:flutter_application_1/modules/app/homepage/My/ability/ability.controller.dart';
import 'package:flutter_application_1/modules/app/homepage/My/document/document.controller.dart';
import 'package:flutter_application_1/modules/app/homepage/My/experience/experience.controller.dart';
import 'package:flutter_application_1/modules/app/homepage/My/my.controller.dart';
import 'package:flutter_application_1/modules/app/homepage/My/profile/profile.controller.dart';
import 'package:flutter_application_1/modules/app/homepage/Welcome/welcome.controller.dart';
import 'package:flutter_application_1/modules/app/homepage/homepage.controller.dart';
import 'package:flutter_application_1/repositories/login.repository.dart';
import 'package:flutter_application_1/repositories/signUp.repository.dart';
import 'package:flutter_application_1/services/login.service.dart';
import 'package:flutter_application_1/services/signUp.service.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    //Controllers
    Get.lazyPut(() => AuthController(), fenix: true);
    Get.lazyPut(() => SignInController(), fenix: true);
    Get.lazyPut(() => TelephoneController(), fenix: true);
    Get.lazyPut(() => ForgetPasswordController(), fenix: true);
    Get.lazyPut(() => CandidateController(), fenix: true);
    Get.lazyPut(() => RecruiterController(), fenix: true);
    Get.lazyPut(() => SmsVerificationController(), fenix: true);
    Get.lazyPut(() => EmailController(), fenix: true);
    Get.lazyPut(() => EmailVerificationController(), fenix: true);
    Get.lazyPut(() => InfoController(), fenix: true);
    Get.lazyPut(() => HomepageController(), fenix: true);
    Get.lazyPut(() => WelcomeController(), fenix: true);
    Get.lazyPut(() => CalendarController(), fenix: true);
    Get.lazyPut(() => MyController(), fenix: true);
    Get.lazyPut(() => DocumentController(), fenix: true);
    Get.lazyPut(() => ExperienceController(), fenix: true);
    Get.lazyPut(() => AbilityController(), fenix: true);
    Get.lazyPut(() => SmsErrorController(), fenix: true);
    Get.lazyPut(() => SignInErrorController(), fenix: true);
    Get.lazyPut(() => PasswordController(), fenix: true);
    Get.lazyPut(() => SplashController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => ContactController(), fenix: true);
    Get.lazyPut(() => MapController(), fenix: true);
    //Get.lazyPut(() => GoogleMapPositionController(), fenix: true);
    Get.lazyPut(() => GooglePlaceApiController(), fenix: true);

    Get.lazyPut(() => RecommendController(), fenix: true);
    Get.lazyPut(() => DutyController(), fenix: true);

    //Services
    Get.lazyPut(() => LoginService(), fenix: true);
    Get.lazyPut(() => SignUpService(), fenix: true);

    //Repositories
    Get.lazyPut(() => LoginRepository(), fenix: true);
    Get.lazyPut(() => SignUpRepository(), fenix: true);
  }
}
