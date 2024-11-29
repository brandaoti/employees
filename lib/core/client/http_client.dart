import 'client_response.dart';

typedef RequestProgress = void Function(int count, int total);
typedef QueryParams = Map<String, dynamic>;

abstract class HttpClient {
  void updateBaseUrl(String baseUrl);
  void addAllHeader(Map<String, String> map);
  void addHeader(Map<String, dynamic> header);

  Future<ClientResponse<T>> get<T>(
    String url, {
    QueryParams? queryParameters,
    RequestProgress? onReceiveProgress,
  });

  Future<ClientResponse<T>> getBytes<T>(
    String url, {
    String? contentType,
    QueryParams? queryParameters,
    RequestProgress? onReceiveProgress,
    ClientResponseType type = ClientResponseType.bytes,
  });

  Future<ClientResponse<T>> post<T>(
    String url, {
    dynamic data,
    QueryParams? queryParameters,
    RequestProgress? onReceiveProgress,
  });

  Future<ClientResponse<T>> put<T>(
    String url, {
    dynamic data,
    QueryParams? queryParameters,
    RequestProgress? onReceiveProgress,
  });

  Future<ClientResponse<T>> patch<T>(
    String url, {
    dynamic data,
    QueryParams? queryParameters,
    RequestProgress? onReceiveProgress,
  });

  Future<ClientResponse<T>> delete<T>(
    String url, {
    dynamic data,
    QueryParams? queryParameters,
  });
}
