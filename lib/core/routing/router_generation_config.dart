import 'package:go_router/go_router.dart';
import 'package:velo/features/auth/presentation/pages/auth_view.dart';
import 'package:velo/features/auth/presentation/pages/done_reset_pass_view.dart';
import 'package:velo/features/auth/presentation/pages/forgot_pass_view.dart';
import 'package:velo/features/auth/presentation/pages/reset_pass_view.dart';
import 'package:velo/features/auth/presentation/pages/verify_email_view.dart';
import 'package:velo/features/instructor/create_course/presentation/pages/create_course_view.dart';
import 'package:velo/features/instructor/enrollments/presentation/pages/enrollments_view.dart';
import 'package:velo/features/instructor/instructor_chat/presentation/pages/instructor_conversation_view.dart';
import 'package:velo/features/instructor/main/instructor_main_view.dart';
import 'package:velo/features/instructor/reviews/presentation/pages/instructor_reviews_view.dart';
import 'package:velo/features/user/change_pass/presentation/pages/change_pass_view.dart';
import 'package:velo/features/user/checkout/presentation/pages/checkout_view.dart';
import 'package:velo/features/user/course_details/presentation/pages/cource_details_view.dart';
import 'package:velo/features/user/edit_profile/presentation/pages/edit_profile_view.dart';
import 'package:velo/features/user/instructor/presentation/pages/instructor_view.dart';
import 'package:velo/features/user/main/main_view.dart';
import 'package:velo/features/intro/onboarding/presentation/views/onboarding_screen.dart';
import 'package:velo/features/user/payment/presentation/pages/add_payment_view.dart';
import 'package:velo/features/user/payment/presentation/pages/payment_view.dart';
import 'package:velo/features/user/search/presentation/pages/search_filter_view.dart';
import 'package:velo/features/intro/splash/presentation/views/splash_view.dart';
import 'package:velo/features/user/wishlist/presentation/pages/wishlist_view.dart';
import 'app_routes.dart';

class RouterGenerationConfig {
  static GoRouter router = GoRouter(
    initialLocation: AppRoutes.instructorMain,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.onboarding,
        name: AppRoutes.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.auth,
        name: AppRoutes.auth,
        builder: (context, state) => const AuthView(),
      ),
      GoRoute(
        path: AppRoutes.forgotPass,
        name: AppRoutes.forgotPass,
        builder: (context, state) => const ForgotPassView(),
      ),
      GoRoute(
        path: AppRoutes.newPass,
        name: AppRoutes.newPass,
        builder: (context, state) => const ResetPassView(),
      ),
      GoRoute(
        path: AppRoutes.doneReset,
        name: AppRoutes.doneReset,
        builder: (context, state) => const DoneResetPassView(),
      ),
      GoRoute(
        path: AppRoutes.verifyEmail,
        name: AppRoutes.verifyEmail,
        builder: (context, state) =>
            VerifyEmailView(email: state.extra as String),
      ),
      GoRoute(
        path: AppRoutes.main,
        name: AppRoutes.main,
        builder: (context, state) => MainView(key: MainView.mainViewKey),
      ),
      GoRoute(
        path: AppRoutes.courseDetails,
        name: AppRoutes.courseDetails,
        builder: (context, state) =>
            CourceDetailsView(title: state.extra as String),
      ),
      GoRoute(
        path: AppRoutes.checkout,
        name: AppRoutes.checkout,
        builder: (context, state) => CheckoutView(),
      ),
      GoRoute(
        path: AppRoutes.searchFilter,
        name: AppRoutes.searchFilter,
        builder: (context, state) => const SearchFilterView(),
      ),
      GoRoute(
        path: AppRoutes.wishlist,
        name: AppRoutes.wishlist,
        builder: (context, state) => const WishlistView(),
      ),
      GoRoute(
        path: AppRoutes.payment,
        name: AppRoutes.payment,
        builder: (context, state) => const PaymentView(),
      ),
      GoRoute(
        path: AppRoutes.addPayment,
        name: AppRoutes.addPayment,
        builder: (context, state) => const AddPaymentView(),
      ),
      GoRoute(
        path: AppRoutes.instructor,
        name: AppRoutes.instructor,
        builder: (context, state) => const InstructorView(),
      ),
      GoRoute(
        path: AppRoutes.changePass,
        name: AppRoutes.changePass,
        builder: (context, state) => const ChangePassView(),
      ),
      GoRoute(
        path: AppRoutes.editProfile,
        name: AppRoutes.editProfile,
        builder: (context, state) => const EditProfileView(),
      ),
      GoRoute(
        path: AppRoutes.instructorMain,
        name: AppRoutes.instructorMain,
        builder: (context, state) => const InstructorMainView(),
      ),
      GoRoute(
        path: AppRoutes.createCourse,
        name: AppRoutes.createCourse,
        builder: (context, state) => const CreateCourseView(),
      ),
      GoRoute(
        path: AppRoutes.instructorReview,
        name: AppRoutes.instructorReview,
        builder: (context, state) => const InstructorReviewsView(),
      ),
      GoRoute(
        path: AppRoutes.enrollments,
        name: AppRoutes.enrollments,
        builder: (context, state) => const EnrollmentsView(),
      ),
      GoRoute(
        path: AppRoutes.instructorConversation,
        name: AppRoutes.instructorConversation,
        builder: (context, state) =>
            InstructorConversationView(name: state.extra as String),
      ),
    ],
  );
}
