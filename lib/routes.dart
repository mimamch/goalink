import 'package:go_router/go_router.dart';
import 'package:golink/screens/event/event_list_screen.dart';
import 'package:golink/screens/home_screen.dart';
import 'package:golink/screens/main_screen.dart';
import 'package:golink/screens/register_screen.dart';
import 'package:golink/screens/sign_in_screen.dart';

final router = GoRouter(initialLocation: MainScreen.routeName, routes: [
  GoRoute(
    name: MainScreen.routeName,
    path: MainScreen.routeName,
    builder: (context, state) => const MainScreen(),
  ),
  GoRoute(
    name: SignInScreen.routeName,
    path: SignInScreen.routeName,
    builder: (context, state) => const SignInScreen(),
  ),
  GoRoute(
    name: RegisterScreen.routeName,
    path: RegisterScreen.routeName,
    builder: (context, state) => const RegisterScreen(),
  ),
  GoRoute(
    name: HomeScreen.routeName,
    path: HomeScreen.routeName,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    name: EventListScreen.routeName,
    path: EventListScreen.routeName,
    builder: (context, state) => const EventListScreen(),
  ),
]);
