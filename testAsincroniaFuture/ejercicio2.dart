import 'dart:io';

Future<void> main() async {
  print('Comprobando conexión a Internet...');

  try {
    List<InternetAddress> id = await InternetAddress.lookup('google.com');
    print(id);
  } on SocketException catch (_) {
    print('❌ Sin conexión a Internet');
  }
}