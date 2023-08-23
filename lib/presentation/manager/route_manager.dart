import 'package:get/get.dart';
import 'package:shankar_kakumani/presentation/views/dashboard/dashboard_screen.dart';

class RouteManager {
  static List<GetPage> getRoutes() {
    return [
      GetPage(
        name: AppRoutes.initialRoute,
        page: () => DashboardScreen(),
      ),
      GetPage(
        name: AppRoutes.dashboardScreen,
        page: () => DashboardScreen(),
      ),
    ];
  }
}

class AppRoutes {
  static const String initialRoute = '/';
  static const String dashboardScreen = '/dashboard';
}
