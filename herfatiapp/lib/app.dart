import 'package:flutter/material.dart';
import 'core/constants.dart';
import 'core/themes.dart';
import 'presentation/admin/dashboard_screen.dart';
import 'presentation/admin/orders_screen.dart';
import 'presentation/admin/reports_screen.dart';
import 'presentation/admin/users_screen.dart';
import 'presentation/auth/login_screen.dart';
import 'presentation/auth/signup_screen.dart';
import 'presentation/client/chat_screen.dart';
import 'presentation/client/craftsman_profile_screen.dart';
import 'presentation/client/home_screen.dart';
import 'presentation/client/my_orders_screen.dart';
import 'presentation/client/profile_screen.dart';
import 'presentation/craftsman/chat_screen.dart';
import 'presentation/craftsman/home_screen.dart';
import 'presentation/craftsman/orders_screen.dart';
import 'presentation/craftsman/profile_screen.dart' as craftsman_profile;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HerfatiApp',
      theme: appTheme,
      initialRoute: AppRoutes.login,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRoutes.signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case AppRoutes.clientHome:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.clientCraftsmanProfile:
        return MaterialPageRoute(
          builder: (_) => const ClientCraftsmanProfileScreen(),
        );
      case AppRoutes.clientMyOrders:
        return MaterialPageRoute(builder: (_) => const MyOrdersScreen());
      case AppRoutes.clientChat:
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      case AppRoutes.clientProfile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case AppRoutes.craftsmanHome:
        return MaterialPageRoute(builder: (_) => const CraftsmanHomeScreen());
      case AppRoutes.craftsmanProfile:
        return MaterialPageRoute(
          builder: (_) => const craftsman_profile.CraftsmanProfileScreen(),
        );
      case AppRoutes.craftsmanOrders:
        return MaterialPageRoute(builder: (_) => const CraftsmanOrdersScreen());
      case AppRoutes.craftsmanChat:
        return MaterialPageRoute(builder: (_) => const CraftsmanChatScreen());
      case AppRoutes.adminDashboard:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      case AppRoutes.adminUsers:
        return MaterialPageRoute(builder: (_) => const UsersScreen());
      case AppRoutes.adminOrders:
        return MaterialPageRoute(builder: (_) => const AdminOrdersScreen());
      case AppRoutes.adminReports:
        return MaterialPageRoute(builder: (_) => const ReportsScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('Route not found: ${settings.name}')),
          ),
        );
    }
  }
}
