import 'package:get/get.dart';

import '../../Dominio/Appointment/ui/screens/dashboard_screem.dart';
import '../../bindings/dashboard_binding.dart';

part 'app_routes.dart';

/// contains all configuration pages
class AppPages {
  /// when the app is opened, this page will be the first to be shown
  static const initial = Routes.dashboard;

  static final routes = [
    GetPage(
      name: _Paths.dashboard,
      page: () => const DashBoardScreen(),
      binding: DashBoardBinding(),
    ),
  ];
}
