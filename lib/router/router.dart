import 'package:auto_route/auto_route.dart';

import '../features/body_needs/view/body_needs_screen.dart';
import '../features/choice_of_habits/view/choice_of_habits_screen.dart';
import '../features/grow/view/grow_screen.dart';
import '../features/home/view/home_screen.dart';
import '../features/onboarding/onboarding.dart';
import '../features/personal_data/personal_data.dart';
import '../features/profile/profile.dart';
import '../features/setting_on_start/setting_on_start.dart';
import '../features/setting_on_start/view/setting_on_start_screen.dart';
import '../features/splashScreen/splash_screen.dart';
import '../features/today/today.dart';
part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/',
        ),
        AutoRoute(
          page: StartRoute.page,
          path: '/startRoute',
        ),
        AutoRoute(
            page: SettingOnStartRoute.page,
            path: '/setting_on_start_route',
            children: [
              AutoRoute(
                page: PersonalDataRoute.page,
                path: 'personal_data_route',
              ),
              AutoRoute(
                page: ChoiceOfHabitsRoute.page,
                path: 'Choice_Of_Habits_Route',
              ),
              AutoRoute(
                page: BodyNeedsRoute.page,
                path: 'body_needs',
              ),
            ]),
        AutoRoute(page: HomeRoute.page, path: '/home', children: [
          AutoRoute(
            page: TodayRoute.page,
            path: 'today',
          ),
          AutoRoute(
            page: GrowRoute.page,
            path: 'grow',
          ),
          AutoRoute(
            page: ProfileRoute.page,
            path: 'profile',
          ),
        ]),
      ];
}
