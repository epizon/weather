import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final networkClientProvider =
    Provider((ref) => NetworkClientImpl(client: http.Client()));

abstract class NetworkClient {
  Future<http.Response> get(Uri uri);
}

class NetworkClientImpl implements NetworkClient {
  late final http.Client client;

  NetworkClientImpl({required this.client});

  @override
  Future<http.Response> get(Uri uri) async {
    return await client.get(uri);
  }
}
