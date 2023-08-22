import 'package:get/get.dart';
import 'package:shankar_kakumani/presentation/views/dashboard/dashboard_screen.dart';
import 'package:shankar_kakumani/presentation/views/work_in_progress/work_in_progress_screen.dart';

class RouteManager {
  static List<GetPage> getRoutes() {
    return [
      GetPage(
        name: AppRoutes.workInProgressScreen,
        page: () => const WorkInProgressScreen(),
      ),
      GetPage(
        name: AppRoutes.initialRoute,
        page: () => const WorkInProgressScreen(),
      ),
      GetPage(
        name: AppRoutes.dashboardScreen,
        page: () => const DashboardScreen(),
      ),
    ];
  }
}

class AppRoutes {
  static const String initialRoute = '/';
  static const String workInProgressScreen = '/workInProgressScreen';
  static const String dashboardScreen = '/dashboardScreen';
}
