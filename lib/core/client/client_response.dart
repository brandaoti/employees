import 'dart:convert';

class ClientResponse<T> {
  final T? data;
  final int? statusCode;
  final dynamic headers;

  const ClientResponse({
    this.data,
    this.headers,
    this.statusCode,
  });

  @override
  String toString() {
    if (data is Map) return json.encode(data);
    return data.toString();
  }
}

enum ClientResponseType { json, stream, plain, bytes }
