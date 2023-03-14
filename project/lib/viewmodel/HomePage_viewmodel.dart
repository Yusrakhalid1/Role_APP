import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class HomeViewModel extends BaseViewModel{
  
   String _title = 'Police';
   String get title => _title;

   String _title1 = 'Ambulance';
   String get title1 => _title1;

   String _title2 = 'Fire Briqade';
   String get title2 => _title2;
     //  final _navigationService = locator<NavigationService>();
  //   final counterService = locator<CounterService>();
   
  //  navigateToHome(){
  // _navigationService.navigateToHomeView();
// }

}