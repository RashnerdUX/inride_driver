import 'package:go_router/go_router.dart';
import 'package:inride_driver/screens/screens_barrel.dart';

List<GoRoute> routes = [
  GoRoute(
    name: SplashScreen.routeName,
    path: "/",
    builder: (context, state) => const SplashScreen(),
    // redirect: (context, state) {
    //   Future.delayed(const Duration(seconds: 2), () {
    //     context.goNamed(SigninScreen.routeName);
    //   });
    // },
    // pageBuilder: (context, state) {
    //   return CustomTransitionPage(
    //       child: const SplashScreen(),
    //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //         return FadeTransition(
    //             opacity: CurveTween(curve: Curves.easeIn).animate(animation));
    //       });
    // },
  ),
  GoRoute(
    name: SigninScreen.routeName,
    path: "/signin",
    builder: (context, state) => const SigninScreen(),
  ),
  GoRoute(
    name: SignupScreen.routeName,
    path: "/signup",
    builder: (context, state) => const SignupScreen(),
  ),
  GoRoute(
    name: OtpScreen.routeName,
    path: "/otp",
    builder: (context, state) => const OtpScreen(),
  ),
  GoRoute(
    name: TermsScreen.routeName,
    path: "/termsofuse",
    builder: (context, state) => const TermsScreen(),
  ),
  GoRoute(
    name: PushNotificationScreen.routeName,
    path: "/enable-push-notifications",
    builder: (context, state) => const PushNotificationScreen(),
  ),
  GoRoute(
    name: EnableLocationScreen.routeName,
    path: "/enable-location",
    builder: (context, state) => const EnableLocationScreen(),
  ),
  GoRoute(
    name: PaymentMethodScreen.routeName,
    path: "/select-payment-method",
    builder: (context, state) => const PaymentMethodScreen(),
  ),
  GoRoute(
    name: VehicleChoiceScreen.routeName,
    path: '/choose-your-vehicle',
    builder: (context, state) => const VehicleChoiceScreen(),
  ),
  GoRoute(
    name: PassengerChoiceScreen.routeName,
    path: '/choose-your-number-of-passengers',
    builder: (context, state) => const PassengerChoiceScreen(),
  ),
  GoRoute(
    name: SetProfilePictureScreen.routeName,
    path: "/set-your-profile-picture",
    builder: (context, state) => const SetProfilePictureScreen(),
  ),
  GoRoute(
    name: TakePhotoScreen.routeName,
    path: '/take-your-picture',
    builder: (context, state) => const TakePhotoScreen(),
  ),
  GoRoute(
    name: GalleryPermissionScreen.routeName,
    path: "/enable-access-to-your-gallery",
    builder: (context, state) => const GalleryPermissionScreen(),
  ),
  GoRoute(
    name: HomeScreen.routeName,
    path: "/home",
    builder: (context, state) => HomeScreen(),
  ),
  GoRoute(
    name: ProfileScreen.routeName,
    path: "/profile",
    builder: (context, state) => const ProfileScreen(),
  ),
  GoRoute(
    name: EarningsScreen.routeName,
    path: "/earnings",
    builder: (context, state) => const EarningsScreen(),
  ),
  GoRoute(
    name: DriverChatScreen.routeName,
    path: "/chat",
    builder: (context, state) => const DriverChatScreen(),
  ),
];
