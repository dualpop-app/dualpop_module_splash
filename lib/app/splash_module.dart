

import 'package:dualpop_commons_dependencies/dualpop_commons_dependencies.dart';

import 'feature/ui/splash_page.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [
    
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashPage(nextRoute: AuthRoutes.main)),
  ];
}