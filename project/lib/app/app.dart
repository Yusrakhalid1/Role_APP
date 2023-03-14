import 'package:project/views/HomePage_view.dart';
import 'package:project/views/login_pin_view.dart';
import 'package:project/views/login_screen.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes:[
    MaterialRoute(page: Login_screen , initial: true ),
    MaterialRoute(page: PasswordView),
    MaterialRoute(page: HomePage_view ),
  ],
  dependencies:[
    Singleton(
      classType: NavigationService,
    )
  ]
)
class  App {}