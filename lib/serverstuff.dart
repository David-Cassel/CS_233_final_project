import 'package:web_socket_channel/web_socket_channel.dart';

final channel = WebSocketChannel.connect(Uri.parse('ws://localhost:8080'));

channel.stream.listen((message) {
  print('Message from server: $message');
});

channel.sink.add('Hello from Flutter!');
