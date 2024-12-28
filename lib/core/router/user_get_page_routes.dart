import 'package:doctor/core/controllers/animation/login_animation_controller.dart';
import 'package:doctor/core/controllers/animation/signup_animation_controller.dart';
import 'package:doctor/core/controllers/doctor_controllers/appointment_controller.dart';
import 'package:doctor/core/controllers/user_controllers/donation_controller.dart';
import 'package:doctor/core/controllers/user_controllers/request_appointment_controller.dart';
import 'package:doctor/view/User/appointments/user_appointment_screen.dart';
import 'package:doctor/core/controllers/animation/welcome_animation_controller.dart';
import 'package:doctor/core/controllers/authentication/login_controller.dart';
import 'package:doctor/core/controllers/authentication/sign_up_controller.dart';
import 'package:doctor/core/controllers/doctor_controllers/patients_controller.dart';
import 'package:doctor/core/controllers/doctor_controllers/doctor_profile_controller.dart';
import 'package:doctor/core/controllers/main/main_view_controller.dart';
import 'package:doctor/core/controllers/user_controllers/pill_controller.dart';
import 'package:doctor/utils/static/app_routes.dart';
import 'package:doctor/view/Doctor/patients/patient_details_screen.dart';
import 'package:doctor/view/Doctor/authentication/doctor_login.dart';
import 'package:doctor/view/Doctor/authentication/doctor_signup.dart';
import 'package:doctor/view/Doctor/doctor_main_view.dart';
import 'package:doctor/view/Doctor/profile/doctor_profile_screen.dart';
import 'package:doctor/view/User/add_pill.dart';
import 'package:doctor/view/User/authentication/login.dart';
import 'package:doctor/view/User/blood_donation/blood_banks_screen.dart';
import 'package:doctor/view/User/blood_donation/blood_donation.dart';
import 'package:doctor/view/User/blood_donation/blood_seekers.dart';
import 'package:doctor/view/User/user_main_view.dart';
import 'package:doctor/view/start/doctor_welcome_screen.dart';
import 'package:get/get.dart';

import '../../view/User/authentication/signup.dart';
import '../../view/User/blood_donation/request_blood_screen.dart';
import '../../view/start/user_welcome_screen.dart';

List<GetPage<dynamic>>? userGetPageRoutes = [
  GetPage(name: AppRoutes.userWelcome, page: () => UserWelcomeScreen(),
    binding: BindingsBuilder(() => Get.lazyReplace(() => WelcomeAnimationController())),
  ),
  GetPage(name: AppRoutes.userMainView, page: () => UserMainView(),
    binding: BindingsBuilder(() => Get.lazyPut(() => MainViewController())),
  ),
  GetPage(name: AppRoutes.userLogin, page: () => LogInScreen(),
    bindings: [
      BindingsBuilder(() => Get.lazyReplace(() => LoginController())),
      BindingsBuilder(() => Get.lazyReplace(() => LoginAnimationController())),
    ],
  ),
  GetPage(name: AppRoutes.userSignup, page: () => SingUpScreen(),
    bindings: [
      BindingsBuilder(() => Get.lazyReplace(() => SignUpController())),
      BindingsBuilder(() => Get.lazyReplace(() => SignupAnimationController())),
    ],
  ),
  GetPage(name: AppRoutes.addPill, page: () => AddPillScreen(),
    binding: BindingsBuilder(() => Get.lazyPut(() => PillController())),
  ),
  GetPage(name: AppRoutes.bloodSeekers, page: () => BloodSeekersScreen()),
  GetPage(name: AppRoutes.bloodDonation, page: () => BloodDonationScreen(),

  ),
  GetPage(name: AppRoutes.bloodBanks, page: () => BloodBanksScreen(),
    binding: BindingsBuilder(() => Get.lazyPut(() => DonationController())),

  ),

  GetPage(name: AppRoutes.donationRequest, page: () => RequestBloodScreen(),
    binding: BindingsBuilder(() => Get.lazyPut(() => DonationController())),
  ),

  GetPage(name: AppRoutes.userAppointment, page: () => UserAppointmentScreen(),
    bindings: [
      BindingsBuilder(() => Get.lazyPut(() => AppointmentController())),
      BindingsBuilder(() => Get.lazyPut(() => RequestAppointmentController()))
    ],
  ),


  GetPage(name: AppRoutes.doctorWelcome, page: () => DoctorWelcomeScreen(),
    binding: BindingsBuilder(() => Get.lazyReplace(() => WelcomeAnimationController())),
  ),
  GetPage(name: AppRoutes.doctorLogin, page: () => DoctorLoginScreen(),
    bindings: [
      BindingsBuilder(() => Get.lazyReplace(() => LoginController())),
      BindingsBuilder(() => Get.lazyReplace(() => LoginAnimationController())),
    ],
  ),
  GetPage(name: AppRoutes.doctorSignup, page: () => DoctorSingUpScreen(),
    bindings: [
      BindingsBuilder(() => Get.lazyReplace(() => SignUpController())),
      BindingsBuilder(() => Get.lazyReplace(() => SignupAnimationController())),
    ],
  ),
  GetPage(name: AppRoutes.doctorMainView, page: () => DoctorMainView(),
    binding: BindingsBuilder(() => Get.lazyReplace(() => MainViewController())),
  ),
  GetPage(name: AppRoutes.patientDetails, page: () => PatientDetailsScreen(),
  binding: BindingsBuilder(() => Get.lazyPut(()=> PatientsController()))
  ),
  GetPage(name: AppRoutes.doctorProfile, page: () => DoctorProfileScreen(),
  binding: BindingsBuilder(() => Get.lazyReplace(()=> DoctorProfileController()))
  ),

];