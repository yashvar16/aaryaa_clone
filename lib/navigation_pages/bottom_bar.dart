import 'package:get/get.dart';
import 'package:arya_digital/navigation_pages/home.dart';
import 'package:arya_digital/navigation_pages/reusable_page.dart';

class BottomNavigationBarController extends GetxController {
  RxInt index = 0.obs;
  var pages = const [
    Home(),
    ReusablePage(
      reusable: 'Channel',
    ),
    ReusablePage(
      reusable: 'Store',
    ),
    ReusablePage(
      reusable: 'Profile',
    ),
  ];
}
