import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

enum ConnectivityStatus { notDetermined, isConnected, isDisconnected }

class ConnectivityStatusController extends GetxController {
  var connectivityStatus = ConnectivityStatus.notDetermined.obs;

  @override
  void onInit() {
    super.onInit();
    _checkConnectivity();
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      _updateConnectivityStatus(result);
    });
  }

  void _checkConnectivity() async {
    var result = await Connectivity().checkConnectivity();
    _updateConnectivityStatus(result);
  }

  void _updateConnectivityStatus(ConnectivityResult result) {
    if (result == ConnectivityResult.wifi || result == ConnectivityResult.mobile) {
      connectivityStatus.value = ConnectivityStatus.isConnected;
    } else {
      connectivityStatus.value = ConnectivityStatus.isDisconnected;
    }
  }
}
