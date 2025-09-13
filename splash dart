import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());
}

// call in initState()
void init() async {
  // Do some async work
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();
}
