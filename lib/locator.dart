import 'package:fe_interview_task/pages/base/base_vm.dart';
import 'package:fe_interview_task/pages/home/home_vm.dart';
import 'package:fe_interview_task/services/navigation_service.dart';
import 'package:get_it/get_it.dart';


GetIt getIt = GetIt.I;

void setupLocator() {
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());
  registerViewModel();
}



void registerViewModel() {
  //View Model
  getIt.registerFactory<BaseViewModel>(() => BaseViewModel());
  getIt.registerFactory<HomeViewModel>(() => HomeViewModel());


}