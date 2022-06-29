import 'package:flutter_application_1/modules/app/auth/SignIn/ForgetPassword/forget.view.dart';
import 'package:flutter_application_1/modules/app/auth/SignIn/ForgetPassword/forgotPasswordSmsVerification/forgotPasswordSmsVerification.view.dart';
import 'package:flutter_application_1/modules/app/auth/SignIn/ResetPassword/resetPassword.view.dart';
import 'package:flutter_application_1/modules/app/auth/SignIn/signin.view.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Email/email.view.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/EmailVerification/emailverification.view.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Infos/info.view.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Password/password.view.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Position/google_place_api.view.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/SmsVerification/smsverification.view.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Status/Candidate/candidate.view.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Telephone/telephone.view.dart';
import 'package:flutter_application_1/modules/app/auth/Splash/splash.view.dart';
import 'package:flutter_application_1/modules/app/auth/auth.view.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Status/Recruiter/recruiter.view.dart';
import 'package:flutter_application_1/modules/app/error/Network/network_error.view.dart';
import 'package:flutter_application_1/modules/app/error/NothingFound/nothing_found.view.dart';
import 'package:flutter_application_1/modules/app/error/SignIn/signin_error.view.dart';
import 'package:flutter_application_1/modules/app/error/access/Camera/camera_access.view.dart';
import 'package:flutter_application_1/modules/app/error/access/File/file_access.view.dart';
import 'package:flutter_application_1/modules/app/error/access/GPS/gps_access.view.dart';
import 'package:flutter_application_1/modules/app/homepage/Calendar/calendar.view.dart';
import 'package:flutter_application_1/modules/app/homepage/Drawer/Contact/contact.view.dart';
import 'package:flutter_application_1/modules/app/homepage/Drawer/GoogleMap/google_map.view.dart';
import 'package:flutter_application_1/modules/app/homepage/Drawer/Recommend/recommend.view.dart';
import 'package:flutter_application_1/modules/app/homepage/Drawer/Settings/setting.view.dart';
import 'package:flutter_application_1/modules/app/homepage/Duty/duty.view.dart';
import 'package:flutter_application_1/modules/app/homepage/My/document/document.view.dart';
import 'package:flutter_application_1/modules/app/homepage/My/experience/experience.view.dart';
import 'package:flutter_application_1/modules/app/homepage/My/logout/logout.view.dart';
import 'package:flutter_application_1/modules/app/homepage/My/my.view.dart';
import 'package:flutter_application_1/modules/app/homepage/My/ability/ability.view.dart';
import 'package:flutter_application_1/modules/app/homepage/My/profile/profile.view.dart';
import 'package:flutter_application_1/modules/app/homepage/Search/search.view.dart';
import 'package:flutter_application_1/modules/app/homepage/Welcome/welcome.view.dart';
import 'package:flutter_application_1/modules/app/homepage/homepage.view.dart';
import 'package:flutter_application_1/modules/app/timeout/EmailVerification/emailverification_timeout.view.dart';
import 'package:flutter_application_1/modules/app/timeout/SignIn/signin_timeout.view.dart';
import 'package:get/get.dart';

part 'app.routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(name: Routes.splash, page: () => const SplashView(), children: [
      GetPage(
        name: Routes.auth,
        page: () => const AuthView(),
      )
    ]),
    GetPage(
      name: Routes.auth,
      page: () => const AuthView(),
      children: [
        GetPage(
          name: Routes.signIn,
          page: () => const SignInView(),
          children: [
            GetPage(
                name: Routes.forgetPassword,
                page: () => const ForgetPasswordView(),
                children: [
                  GetPage(
                      name: Routes.forgotPasswordSmsVerificationRoute,
                      page: () => const ForgotPasswordSmsVerificationView())
                ])
          ],
        ),
        GetPage(
          name: Routes.recruiter,
          page: () => const RecruiterView(),
        ),
        GetPage(
          name: Routes.candidate,
          page: () => const CandidateView(),
        ),
        GetPage(
            name: Routes.telephone,
            page: () => const TelephoneView(),
            children: [
              GetPage(
                  name: Routes.smsVerification,
                  page: () => const SmsVerificationView(),
                  children: [
                    GetPage(
                        name: Routes.email,
                        page: () => const EmailView(),
                        children: [
                          GetPage(
                            name: Routes.emailVerification,
                            page: () => const EmailVerificationView(),
                          )
                        ])
                  ]),
            ]),
        GetPage(
          name: Routes.infos,
          page: () => const InfoView(),
        ),
      ],
    ),
    GetPage(name: Routes.password, page: () => const PasswordView()),
    GetPage(name: Routes.homepage, page: () => const HomepageView()),
    GetPage(name: Routes.welcome, page: () => const WelcomeView()),
    GetPage(name: Routes.calendar, page: () => const CalendarView()),
    GetPage(name: Routes.menu, page: () => const MyView()),
    GetPage(name: Routes.document, page: () => const DocumentView()),
    GetPage(name: Routes.experience, page: () => const ExperienceView()),
    GetPage(name: Routes.logout, page: () => const LogoutView()),
    GetPage(name: Routes.ability, page: () => const AbilityView()),
    GetPage(name: Routes.splash, page: () => const SplashView()),
    GetPage(
        name: Routes.profile,
        page: () => const ProfileView(
              title: '123',
            )),
    GetPage(name: Routes.contact, page: () => const ContactView()),
    GetPage(name: Routes.googleMap, page: () => const GoogleMapView()),
    GetPage(name: Routes.recommend, page: () => const RecommendView()),
    GetPage(name: Routes.my, page: () => const MyView()),
    GetPage(name: Routes.duty, page: () => const DutyView()),
    GetPage(
        name: Routes.googlePlaceApi, page: () => const GooglePlaceApiView()),
    GetPage(name: Routes.setting, page: () => const SettingView()),
    GetPage(name: Routes.search, page: () => const SearchView()),
    GetPage(name: Routes.nothingFound, page: () => const NothingFindView()),
    GetPage(name: Routes.signInError, page: () => const SignInErrorView()),
    GetPage(name: Routes.networkError, page: () => const NetWorkErrorView()),
    GetPage(name: Routes.gpsAccess, page: () => const GpsAccessView()),
    GetPage(name: Routes.cameraAccess, page: () => const CameraAccessView()),
    GetPage(name: Routes.fileAccess, page: () => const FileAccessView()),
    GetPage(name: Routes.signInTimeOut, page: () => const SigiInTimeOutView()),
    GetPage(
        name: Routes.emailVerificationTimeOut,
        page: () => const EmailVerificationTimeOutView()),
    GetPage(name: Routes.resetPassword, page: () => const ResetPasswordView()),
    GetPage(
        name: Routes.forgotPasswordSmsVerification,
        page: () => const ForgotPasswordSmsVerificationView()),
  ];
}
